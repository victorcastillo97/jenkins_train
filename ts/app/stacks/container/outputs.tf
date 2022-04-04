output "json_map_encoded_list" {
  description = "JSON encoded list of container definitions for use with other terraform resources such as aws_ecs_task_definition"
  value       = module.container.json_map_encoded_list
}