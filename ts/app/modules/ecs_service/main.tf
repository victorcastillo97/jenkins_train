resource "aws_ecs_service" "service" {
  name            = var.ecs_service_name
  cluster         = var.cluster_id
  task_definition = var.task_definition
  desired_count   = var.desired_count

  load_balancer {
    target_group_arn = var.lb_target_group_arn
    container_name   = var.container_name
    container_port   = var.container_port
  }

}