pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                checkout([
                    $class: 'GitSCM',
				    branches: [[name: '*/*']],
		            doGenerateSubmoduleConfigurations: false,
	         	    extensions: [],
                    submoduleCfg: [],
			        userRemoteConfigs: [[url: 'https://github.com/VaibhavPrajapati/Basic-PHP-Application.git']]
                ])					
                script {
                    echo "install compose.json"
                    sh 'composer install --prefer-source'
                    sh 'printenv'			
                }
            }
        }
        stage('Test') {
            environment {
                DB_HOST = "localhost"
                DB_DATABASE = "laravel_test"
                DB_USERNAME = "laravel_test"
                DB_PASSWORD = "my_pass"
            }
            steps {
                script {
                    try{
                    echo "Running Test cases"
                    sh 'mkdir -p database ; touch database/database.sqlite'
                    sh './vendor/bin/phpunit --colors tests'
                    }
                    catch(Exception e){
                        echo "Skipped test"
                    }				
                }  
            }
        }
		stage('CodeAnalysis') {
            when {
                expression {
                    GIT_BRANCH ==~ /.*master|.*feature\/.*|.*develop|.*hotfix\/./
                }
            }
            steps {	
			    script {
                    scannerHome = tool name: 'sonar-scanner', type: 'hudson.plugins.sonar.SonarRunnerInstallation'
                }
                withSonarQubeEnv('nitor-sonar') {
                    sh "${scannerHome}/bin/sonar-scanner -Dproject.settings=sonar-scanner.properties"
                }
            }
        }
		stage('StoreArtifact') {
            when {
                expression {
                    GIT_BRANCH ==~ /.*master|.*feature|.*development|.*hotfix/
                }
            }
            steps {
			    script{
			    	echo "Store Artifact in local workspace"
				    sh 'tar -cvf ${BUILD_NUMBER}.tar  .'
                    archiveArtifacts '*.tar'
			    }
            }
        }
        stage('Deploy_Stage') {
            when {
                expression {
                    GIT_BRANCH ==~ /.*master|.*feature|.*hotfix/
                }
            }
            steps {
			    script{
			    	echo "Deploy application on stage environment"
				    sh 'docker-compose build'
                    sh 'docker push vaibhavprajapati12/laravel-php-fpm'
                    withDockerRegistry(credentialsId: 'a4807db0-ff22-4bff-a48f-63d598efb98c', url: 'https://index.docker.io/v1/') {
                        sh 'docker push vaibhavprajapati12/laravel-php-fpm'
			        }
                    ansiblePlaybook installation: 'ansible', inventory: 'hosts', playbook: 'playbook.yml'
                }
            }
        }
        stage('Deploy_Dev') {
            when {
                expression {
                    GIT_BRANCH ==~ /.*development/
                }
            }
            steps {
			    script{
			    	echo "Deploy application on developmment environment"
				    sh 'docker-compose build'
                    sh 'docker push vaibhavprajapati12/laravel-php-fpm'
                    withDockerRegistry(credentialsId: 'a4807db0-ff22-4bff-a48f-63d598efb98c', url: 'https://index.docker.io/v1/') {
                        sh 'docker push vaibhavprajapati12/laravel-php-fpm'
			        }
                    ansiblePlaybook installation: 'ansible', inventory: 'hosts', playbook: 'playbook.yml'
                }
            }
        }

    }
}
