@Library('piper') _

pipeline {
    agent {
        any {
            image 'astanciuona/cca-service-scan-image' // Your custom Docker image
        }
    }
    stages {
        stage('Build') {
            steps {
                echo 'Building the cca-service-scan Java project...'
                sh './mvnw clean package' // Adjust this if you use a different build tool
            }
        }
        stage('Load Config') {
            steps {
                script {
                    // Load the config file from resources/config.yml
                    def configContent = libraryResource('config.yml')
                    echo "Loaded config: ${configContent}"
                }
            }
        }
        stage('Run Cca Service Scan Step') {
            steps {
                script {
                    // Call the custom step
                    //piperTestStep() -- this is the test step from previous proj must be deleted after the push
                    ccaServiceScanStep()

                }
            }
        }
    }
    post {
        always {
            echo 'Pipeline completed.'
        }
    }
}
