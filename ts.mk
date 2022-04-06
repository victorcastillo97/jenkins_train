
## DEFINITION CONTAINER ##
CONTAINER_IMAGE 		= s3.aws.com/ngnix
CONTAINER_MEMORY 		= 526
CONTAINER_MEMORY_RESERVATION = 526 
CONTAINER_CPU 			= 0
CONTAINER_ENVIRONMENT 	= [{"name":"HOST","value":"localhost"},{"name":"HOST","PORT":"4000"}]
CONTAINER_PORT 			= 80

## ECS SERVICE 
## CLUSTER FOR THE SERVICE
CLUSTER_ID				= 7y5g9rp6e9w3b2l
## NUMBER TASK OF SERVICE
DESIRED_COUNT 			= 1
## ECS SERVICE- LOAD BALANCER
LB_TARGET_GROUP_ARN		= dsf54s64sa56465asd


ts.init:
	@export AWS_PROFILE = ${AWS_PROFILE}
	@export AWS_REGION = ${AWS_REGION}

ts.validate:
	@terraspace validate service
	@terraspace validate task

ts.env.show:
	@echo "------------------------ Environment  Variables ------------------------" && \
		echo "AWS_PROFILE: ${AWS_PROFILE}" && \
		echo "AWS_REGION : ${AWS_REGION}" && \
		echo "ENV        : ${ENV}" && \
		echo "OWNER      : ${OWNER}" && \
		echo "------------------------------------------------------------------------"

ts.cmd: ts.env.show ## Execute terraspace command.: make ts.cmd
	@make --no-print-directory ct.cmd COMMAND="bundle exec ${COMMAND}"

ts.up:
	@TS_ENV=${ENV} terraspace all up \
		--cluster_id ${CLUSTER_ID} \
		--desired_count ${DESIRED_COUNT} \
		--lb_target_group_arn ${LB_TARGET_GROUP_ARN} \
		--container_image ${CONTAINER_IMAGE} \
		--container_memory ${CONTAINER_MEMORY} \
		--container_memory_reservation ${CONTAINER_MEMORY_RESERVATION} \
		--container_cpu ${CONTAINER_CPU} \
		--container_environment ${CONTAINER_ENVIRONMENT} \
		--container_port ${CONTAINER_PORT} -y

ts.destroy:
	@terraspace all down -y
