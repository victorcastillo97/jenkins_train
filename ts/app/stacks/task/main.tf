data "aws_ecs_task_definition" "this" {
  task_definition =  module.task_definition.family 
}


module "task_definition" {
    source      = "../../modules/task_definition"
    family = var.task_definition
    network_mode  = var.network_mode
    container_definitions = var.container_definitions
}