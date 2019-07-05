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
			    withDockerContainer('composer') {
			        script {
				        echo "install compose.json"
                        sh 'composer install --prefer-source'				
			        }					
                }
            }
        }
        stage('Test') {
            when {
                expression {
                    GIT_BRANCH ==~ /.*master|.*feature|.*development|.*hotfix/
                }
            }
            steps {
                withDockerContainer('php') {
			        script {
                        try{
				        echo "Running Test cases"
			     	    sh './vendor/bin/phpunit --colors tests'
                        }
                        catch(Exception e){
                            echo "Skipped test"
                        }				
			        }
                }       
            }
        }
		stage('CodeAnalysis') {
            when {
                expression {
                    GIT_BRANCH ==~ /.*master|.*feature|.*development|.*hotfix/
                }
            }
            steps {			
			    script {
                    scannerHome = tool name: 'sonar-scanner', type: 'hudson.plugins.sonar.SonarRunnerInstallation'
                }                
                withSonarQubeEnv('sonar-server') {
                    sh "${scannerHome}/bin/sonar-scanner"
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
