def pipelineID = UUID.randomUUID().toString()


@Library("shared-library") _
pipeline{
    agent{label "master"}
    environment{
        AppName = "My-Test-App"
        pipelineID = "${pipelineID}"
    }
    stages{
        stage("Checkout Code"){
            steps{
                gitCheckout()
            }
        }
    }
}
