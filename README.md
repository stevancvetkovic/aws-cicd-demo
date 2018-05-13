# Continuous deployment with AWS managed services

This is a sample Maven Web application used for a purpose of presenting AWS capabilities for Continuous Deployment. App itself is built with the following command:

```mvn archetype:generate -DgroupId=tech.simpledevops -DartifactId=awsdemo -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false```

Beside the application, at the root of this repository you will find buildspec.yml file, which defines build specifications for AWS CodeBuild, and appspec.yml file which stores deployment specs for AWS CodeDeploy. Also, at operations folder there is a complete set of ready-to-use JSON input template files for AWS CLI, which create a complete Continuous Deployment pipeline using AWS managed services only (CodeCommit, CodeBuild, CodeDeploy, CodePipeline and OpsWorks). With them, through AWS CLI you can quickly setup complete deployment pipeline which builds and deploys the given sample Maven app.

Before using supplied AWS JSON templates, make sure to replace all placeholders "<your-aws-account-id>" in them with your own AWS account ID.