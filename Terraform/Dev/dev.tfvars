region = "us-east-1"

env = "dev"

item_count = 2

#VPC variables
vpc_cidr = "10.0.0.0/16"

availability_zone_names = ["us-east-1a", "us-east-1b"]

web_subnet_cidr = ["10.0.1.0/24", "10.0.2.0/24"]

application_subnet_cidr = ["10.0.11.0/24", "10.0.12.0/24"]

database_subnet_cidr = ["10.0.21.0/24", "10.0.22.0/24"]

#ECS variables
ecs_cluster_name = "Cluster"

ecs_back_cluster_name = "Back_Cluster"

ecs_task_execution_role_name = "dev_myEcsTaskExecutionRole"

app_image = "xkingrd/ui-front"

back_image = "xkingrd/api-back:v90"

lb_port = 80

app_port = 3000

app_count = 2

front_health_check_path = "/"

back_health_check_path = "/todos"

fargate_cpu = "256"

fargate_memory = "512"


#container_environment [mongodb = "132131"], 


#Create database variables
rds_instance = {
    allocated_storage   = 5
    engine              = "postgres"
    engine_version      = "14.1"
    instance_class      = "db.t4g.micro"
    multi_az            = true
    name                = "dev-mydb"
    skip_final_snapshot = true
    db_name             = "test_db"
  }

#Create database sensitive variables
/* user_information = {
    username = "test_user"
    password = "S3cret123"
  }
 */
