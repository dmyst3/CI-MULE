@Library("shared-library") _
pipeline{
    agent{label "master"}
    environment{
        AppName = "My-Test-App"
    }
    stages{
        stage("Checkout Code"){
            steps{
                gitCheckout()
            }
        }
    }
}
