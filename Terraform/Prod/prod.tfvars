variable "region" {
  description = "Set the desired region of the infrastructure"
  type        = string
  default     = "us-east-1"
}

variable "env" {
  description = "Set the desired enviroment of the infrastructure"
  type        = string
  default     = "prod"
}

#Count variable
variable "item_count" {
  description = "default count used to set AZs and instances"
  type        = number
  default     = 2
}

#VPC variables
variable "vpc_cidr" {
  description = "default vpc cidr block"
  type        = string
  default     = "12.0.0.0/16"
}

variable "availability_zone_names" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b"]
}

variable "web_subnet_cidr" {
  type    = list(string)
  default = ["12.0.1.0/24", "12.0.2.0/24"]
}

variable "application_subnet_cidr" {
  type    = list(string)
  default = ["12.0.11.0/24", "12.0.12.0/24"]
}

variable "database_subnet_cidr" {
  type    = list(string)
  default = ["12.0.21.0/24", "12.0.22.0/24"]
}

#ECS variables
variable "ecs_cluster_name" {
  description = "ECS task execution role name"
  default     = "Cluster"
}

variable "ecs_back_cluster_name" {
  description = "ECS task execution role name"
  default     = "Back_Cluster"
}

variable "ecs_task_execution_role_name" {
  description = "ECS task execution role name"
  default     = "prod_myEcsTaskExecutionRole"
}

variable "app_image" {
  description = "Docker image to run in the ECS cluster"
  default     = "xkingrd/ui-front:latest"
}

variable "back_image" {
  description = "Docker image to run in the ECS cluster"
  default     = "xkingrd/api-back::latest"
}

variable "lb_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 80
}

variable "app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 3000
}

variable "app_count" {
  description = "Number of docker containers to run"
  default     = 2
}

variable "front_health_check_path" {
  default = "/"
}

variable "back_health_check_path" {
  default = "/todos"
}

variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default     = "256"
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default     = "512"
}

#Create database variables
variable "rds_instance" {
  type = map(any)
  default = {
    allocated_storage   = 5
    engine              = "postgres"
    engine_version      = "14.1"
    instance_class      = "db.t4g.micro"
    multi_az            = true
    name                = "prod-mydb"
    skip_final_snapshot = true
    db_name             = "test_db"
  }
}
