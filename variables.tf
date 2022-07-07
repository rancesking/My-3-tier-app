variable "region" {
  description = "Set the desired region of the infrastructure"
  type        = string
}

variable "env" {
  description = "Set the desired enviroment of the infrastructure"
  type        = string
}

#Count variable
variable "item_count" {
  description = "default count used to set AZs and instances"
  type        = number
}

#VPC variables
variable "vpc_cidr" {
  description = "default vpc cidr block"
  type        = string
}

variable "availability_zone_names" {
  type    = list(string)
}

variable "web_subnet_cidr" {
  type    = list(string)
}

variable "application_subnet_cidr" {
  type    = list(string)
}

variable "database_subnet_cidr" {
  type    = list(string)
}

#ECS variables
variable "ecs_cluster_name" {
  description = "ECS task execution role name"
}

variable "ecs_back_cluster_name" {
  description = "ECS task execution role name"
}

variable "ecs_task_execution_role_name" {
  description = "ECS task execution role name"
}

variable "app_image" {
  description = "Docker image to run in the ECS cluster"
}

variable "back_image" {
  description = "Docker image to run in the ECS cluster"
}

variable "lb_port" {
  description = "Port exposed by the docker image to redirect traffic to"
}

variable "app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
}

variable "app_count" {
  description = "Number of docker containers to run"
}

variable "front_health_check_path" {
  description = "Health check path for Frontend Aloadbalancer"
}

variable "back_health_check_path" {
  description = "Health check path for Backend Aloadbalancer"
}

variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
}

#variable "container_environment" {
#  type        = map(any)
#  description = "The environment variables to pass to the container. This is a list of maps. map_environment overrides environment"
#  default = {["mongodb = 132131", mongodb = ]
#   mongodb = "172.16.13.255"
# }
#}

#variable "container_secrets" {
# type        = map(any)
# description = "The environment variables to pass to the container. This is a list of maps. map_environment overrides environment"
# default = {
#  mongodb = "172.16.13.255"
#}
#}


#Create database variables
variable "rds_instance" {
  type = map(any)
}

#Create database sensitive variables
variable "user_information" {
  type = map(any)
  sensitive = true
}