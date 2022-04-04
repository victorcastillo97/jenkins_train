variable "ecs_service" {
    description = "Name of the service"
    type = string
    default     = null
}

variable "cluster_id" {
    description = "ARN of an ECS cluster"
    type = string
    default     = null
}

variable "task_definition" {
    description = "Family and revision (family:revision) or full ARN of the task definition"
    type = string
    default     = null
}   

variable "desired_count" {
    description = "Number of instances of the task definition to place and keep running"
    type = number
    default     = null
}

variable "lb_target_group_arn" {
    description = "ARN of the lb target group to associate with the service"
    type = string
    default     = null
}

variable "container_name" {
    description = "Name of the container to associate with the load balancer"
    type = string
    default     = null
}

variable "container_port" {
    description = "Port on the container to associate with the load balancer"
    type = number
}