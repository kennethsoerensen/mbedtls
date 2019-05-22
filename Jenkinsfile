pipeline {
    agent { dockerfile true }
    stages {
        stage('Prepare') {
            steps {
                sh 'cmake -B mbedtls-build -DCMAKE_C_COMPILER=clang -G Ninja .'
            }
        }
        stage('Build') {
            steps {
                sh 'ninja -C mbedtls-build'
            }
        }
        stage('Test') {
            steps {
                sh 'ninja -C mbedtls-build test'
            }
        }
    }
}
