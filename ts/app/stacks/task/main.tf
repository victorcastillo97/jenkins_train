#configure locals varaibles https://github.com/cloudposse/terraform-aws-ecs-container-definition/blob/master/main.tf

locals {
  container_definition =  {
    container_name               = var.container_name
    container_image              = var.container_image
    container_memory             = var.container_memory
    container_memory_reservation = var.container_memory_reservation
    container_cpu                = var.container_cpu
    essential                    = var.essential
    environment                  = var.container_environment
    container_port_mappings      = var.container_port_mappings
  }

  container_definitions = local.container_definition.json_map_encoded_list
}


data "aws_ecs_task_definition" "this" {
  task_definition =  module.task_definition.family 
}


module "task_definition" {
    source      = "../../modules/task_definition"
    family = var.task_definition
    network_mode  = var.network_mode
    container_definitions = local.container_definitions
}