# Operations

All non-application code is stored in here. This covers Chef cookbooks for Tomcat server provisoning and AWS CLI input JSON files for creating all required AWS resources for CodeCommit, CodeBuild, CodeDeploy, CodePipeline and OpsWorks services.

## Chef cookbooks

The "cookbooks" folder contains all the Chef cookbooks required to install JDK, Tomcat and AWS CodeDeploy agent. Dependent official cookbooks taken from Chef Supermarket are also included so provisioning can be performed with Chef Solo (which AWS OpsWorks also supports).

## AWS JSON templates

The "aws" folder holds templates for all needed IAM policies and roles as well as JSON templates for creating resources on all above mentioned AWS services.