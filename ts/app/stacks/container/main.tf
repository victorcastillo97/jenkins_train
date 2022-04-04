#https://github.com/cloudposse/terraform-aws-ecs-container-definition/tree/0.58.1/examples/complete

module "container" {
  source                       = "../.."
  container_name               = var.container_name
  container_image              = var.container_image
  container_memory             = var.container_memory
  container_memory_reservation = var.container_memory_reservation
  container_cpu                = var.container_cpu
  essential                    = var.essential
  environment                  = var.container_environment
  port_mappings                = var.port_mappings
}