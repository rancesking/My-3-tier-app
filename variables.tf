variable "region" {
  description = "Set the desired region of the infrastructure"
  type        = string
  default     = null
}

variable "env" {
  description = "Set the desired enviroment of the infrastructure"
  type        = string
  default     = null
}

#Count variable
variable "item_count" {
  description = "default count used to set AZs and instances"
  type        = number
  default     = null
}

#VPC variables
variable "vpc_cidr" {
  description = "default vpc cidr block"
  type        = string
  default     = null
}

variable "availability_zone_names" {
  type    = list(string)
  default = null
}

variable "web_subnet_cidr" {
  type    = list(string)
  default = null
}

variable "application_subnet_cidr" {
  type    = list(string)
  default = null
}

variable "database_subnet_cidr" {
  type    = list(string)
  default = null
}

#ECS variables
variable "ecs_cluster_name" {
  description = "ECS task execution role name"
  default     = null
}

variable "ecs_back_cluster_name" {
  description = "ECS task execution role name"
  default     = null
}

variable "ecs_task_execution_role_name" {
  description = "ECS task execution role name"
  default     = null
}

variable "app_image" {
  description = "Docker image to run in the ECS cluster"
  default     = null
}

variable "back_image" {
  description = "Docker image to run in the ECS cluster"
  default     = null
}

variable "lb_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = null
}

variable "app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = null
}

variable "app_count" {
  description = "Number of docker containers to run"
  default     = null
}

variable "front_health_check_path" {
  default = null
}

variable "back_health_check_path" {
  default = null
}

variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default     = null
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default     = null
}

variable "extra_hosts" {
  type = list(object({
    ipAddress = string
    hostname  = string
  }))
  description = "A list of hostnames and IP address mappings to append to the /etc/hosts file on the container. This is a list of maps"
  default = null
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
  default = null
}

variable "db_user" {
  description = "Set the user to connect to the db"
  type        = string
  default     = null
  sensitive = true
}

variable "db_pass" {
  description = "Set the user password to connect to the db"
  type        = string
  default     = null
  sensitive = true
}