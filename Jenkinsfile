pipeline {
    agent any
    tools {
        terraform 'Terraform Local'
    }
    stages{
        stage('Git Checkout'){
            steps{
                git branch: 'refs/heads/main', credentialsId: 'add_cred_id', url: 'https://github.com/dracman65/jenkinswork1.git'
            }
        }        
    }
    stages{
        stage('PowerShell Set Execution'){
            steps{
                ps label: '', pwsh Set-ExecutionPolicy -ExecutionPolicy RemoteSigned
            }
        }        
    }
    stages{
        stage('Terraform init'){
            steps{
                ps label: '', pwsh terraform init
            }
        }        
    }
    stages{
        stage('Terraform validate'){
            steps{
                ps label: '', pwsh terraform init
            }
        }        
    }
    stages{
        stage('Terraform apply'){
            steps{
                ps label: '', pwsh terraform apply --auto-approve
            }
        }        
    }
}