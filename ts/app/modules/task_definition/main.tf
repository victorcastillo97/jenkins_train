resource "aws_ecs_task_definition" "this" {
  family = var.task_definition
  network_mode  = var.network_mode
  container_definitions = var.container_definitions
}