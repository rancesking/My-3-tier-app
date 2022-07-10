# 🔗 3 Tier Infraestructure with Terraform
<p align="center">
<img src="https://i.ibb.co/THcSLWK/avatar.png"> <img src="https://www.datocms-assets.com/2885/1620155117-brandhcterraformverticalcolorwhite.svg">

Terraform is an open-source infrastructure as code software tool that enables you to safely and predictably create, change, and improve infrastructure. Les go and terraform the world. 🦦🦦

## Final project

For this project i was requiered to create and n-tier application on AWS, this insfraescture needs to be on writed on code using IAC principles in this case i use terrafomr to create my infraescture. The application to deploy is a simple PERN Stack To do APP, this application with the CI/CD pipeline for create the containers is located in this repository [xkingrd/To-do APP](https://github.com/rancesking/Final-Project-App).


To deploy this project first you need modify the files and push to the repository, the deployment of the infraestructure is automated with Github Actions CD pipeline, all the changes made to an enviroment is deploy in that enviroment.


1)Infraestructure diagram.
<p align="center">
<a href="https://imgbb.com/"><img src="https://i.ibb.co/92YxrLV/Capture.png" alt="AWS Diagram" border="0"></a>
</p>

2)Terraform commands for manual apply the Dev Enviroment
```js

terraform init -var-file="Terraform/Dev/dev.tfvars"
terraform plan -var-file="Terraform/Dev/dev.tfvars"
terraform Apply -var-file="Terraform/Dev/dev.tfvars"

```
