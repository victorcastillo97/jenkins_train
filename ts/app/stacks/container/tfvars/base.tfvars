container_name               = "<%= expansion('container-:ACCOUNT-:REGION-:ENV') %>"
container_memory             = <%= options[:container_memory] %> 
container_memory_reservation = <%= options[:container_memory_reservation] %> 
container_cpu                = <%= options[:container_cpu] %>
essential                    = true

container_environment = <%= options[:container_environment] %>

container_port_mappings	= [{ "containerPort": <%= options[:CONTAINER_PORT] %>, "protocol": "tcp"}]