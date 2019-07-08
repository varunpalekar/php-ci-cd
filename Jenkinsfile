pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                script {
                    echo "install compose.json"
                    sh 'composer install --prefer-source'
                    sh 'printenv'			
                }
            }
        }
        stage('UnitTest') {
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
                        sh './vendor/bin/phpunit --colors tests --log-junit reports/junit.xml'
                    }
                    catch(Exception e){
                        if ( GIT_BRANCH ==~ /.*master|.*hotfix\/.*|.*release\/.*/ )
                            error "Test case failed"
                        else
                            echo "Skipped test if from personal or feature branch"
                    }
                    try{
                        echo "Running Test code coverage"
                        sh './vendor/bin/phpunit --coverage-clover reports/codeCoverage.xml'
                    }
                    catch(Exception e){
                        if ( GIT_BRANCH ==~ /.*master|.*hotfix\/.*|.*release\/.*/ )
                            error "Code coverage failed"
                        else
                            echo "Skipped code coverage if from personal or feature branch"
                    }
                }  
            }
        }
        stage('CodeAnalysis') {
            when {
                expression {
                    GIT_BRANCH ==~ /.*master|.*feature\/.*|.*develop|.*hotfix\/.*|.*release\/.*/
                }
            }
            steps {	
                script {
                    scannerHome = tool name: 'sonar-scanner', type: 'hudson.plugins.sonar.SonarRunnerInstallation'
                }
                withSonarQubeEnv('nitor-sonar') {
                    sh "${scannerHome}/bin/sonar-scanner"
                }
            }
        }
        stage('StoreArtifact') {
            when {
                expression {
                    GIT_BRANCH ==~ /.*master|.*release\/.*|.*develop|.*hotfix\/.*/
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
        stage('Deploy_Dev') {
            when {
                expression {
                    GIT_BRANCH ==~ /.*develop/
                }
            }
            steps {
                script{
                    echo "Deploy application on developmment environment"
                    ansiblePlaybook installation: 'ansible', inventory: 'hosts-dev', playbook: 'playbook.yml', tags: 'deploy'
                }

                input message: "Do you want to run migration?"

                script{
                    echo "Deploy application on developmment environment"
                    ansiblePlaybook installation: 'ansible', inventory: 'hosts-dev', playbook: 'playbook.yml', tags: 'migration'
                }

                input message: "Do you want to run seeding?"

                script{
                    echo "Deploy application on developmment environment"
                    ansiblePlaybook installation: 'ansible', inventory: 'hosts-dev', playbook: 'playbook.yml', tags: 'seeding'
                }
            }
        }
        
        stage('Undeploy_Dev'){
            when {
                expression {
                    GIT_BRANCH ==~ /.*develop/
                }
            }
            // timeout(time:5, unit:'DAYS') {
            //     input message:'Approve deployment?', submitter: 'it-ops'
            // }
            steps {
                input message: "Do you want to undeploy DEV?"
                script {
                    echo "Undeploy application on developmment environment"
                        ansiblePlaybook installation: 'ansible', inventory: 'hosts-dev', playbook: 'playbook.yml', tags: 'undeploy'
                }
            }
        }
        stage('Deploy_Prod') {
            when {
                expression {
                    GIT_BRANCH ==~ /.*master|.*release\/.*|.*hotfix\/.*/
                }
            }
            steps {
                input message: "Do you want to proceed for production deployment?"
                script{
                    echo "Deploy application on stage environment"
                    ansiblePlaybook installation: 'ansible', inventory: 'hosts-prod', playbook: 'playbook.yml', tags: 'deploy'
                }
            }
        }

    }
}
