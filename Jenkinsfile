pipeline {
    agent {
        label 'aws-RHEL8-DockerCE'
        }
        
    stages {
        stage('Semgrep-Scan') {
            steps {
                sh "docker run -v ${WORKSPACE}:/src --workdir /src returntocorp/semgrep-agent:v1 semgrep-agent --config auto"
            }
        }
        stage ('Build Docker Image') {
            steps {
                sh "docker build -t testimage_${BUILD_ID} ."
            }
        }
        stage ('Run docker image') {
            steps {
                sh "docker run -it --name testimage_${BUILD_ID} -p 0.0.0.0:8000:8080 -d testimage_${BUILD_ID}"
            }
        }
    }
}
