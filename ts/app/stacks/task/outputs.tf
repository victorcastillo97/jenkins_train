output "family" {
    value = module.task_definition.family
}

output "revision" {
    value = module.task_definition.revision
}

output "revision_ultimate" {
    value = max("${module.task_definition.revision}", "${data.aws_ecs_task_definition.this.revision}")
}
