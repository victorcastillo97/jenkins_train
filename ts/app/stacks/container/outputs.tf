output "json_map_encoded_list" {
  description = "JSON encoded list of container definitions for use with other terraform resources such as aws_ecs_task_definition"
  value       = module.container.json_map_encoded_list
}

output "name" {
    description = "Name of the container"
    value = module.container.container_name
}