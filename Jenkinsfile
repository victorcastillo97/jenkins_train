pipeline{
    agent any
    parameters {
        choice(
            name: 'STACK',
            choices:['SIN EJECUCION', 'DEPLOY','DELETE'],
            description: 'Opciones de deploy/delete del Stack'
        )
        choice(
            name: 'STATICFILES',
            choices:['SIN EJECUCION', 'DEPLOY'],
            description: 'Opción de deploy de los Static Files'
        )
        choice(
            name: 'ENVIRONMENT',
            choices:['dev','stg', 'prd'],
            description: 'Ambiente donde se desea realizar el deploy'
        )
    }
    environment {
        NOMBRE ='ricardo'
        APELLIDO ='Gonzales'
    }
    stages{
        stage('DEPLOY STACK'){
            when { expression { return params.STACK == 'DEPLOY'}}
            steps{
                sh 'echo $params.STATICFILES'
            }
        }
        stage('DELETE STACK'){
            when{ expression{ return params.STACK == 'DELETE'}}
            steps{
                sh 'echo $params.STATICFILES'
            }
        }
    }

}

