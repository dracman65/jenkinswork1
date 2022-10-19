pipeline {
    agent any
    tools {
        terraform 'Terraform Local'
    }
    stages{
        stage('Git Checkout'){
            steps{
                git branch: 'refs/heads/main', credentialsId: 'b5e69f53-4333-4adb-802f-966c8947dd3d', url: 'https://github.com/dracman65/jenkinswork1.git'
            }
        }        
    }
    stages{
        stage('Terraform init'){
            steps{
                ps label: '', pwsh 'terraform init'
            }
        }        
    }
    stages{
        stage('Terraform validate'){
            steps{
                ps label: '', pwsh 'terraform init'
            }
        }        
    }
    stages{
        stage('Terraform apply'){
            steps{
                ps label: '', pwsh 'terraform apply --auto-approve'
            }
        }        
    }
}