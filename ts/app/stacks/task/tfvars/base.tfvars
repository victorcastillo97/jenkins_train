task_definition = "<%= expansion('task-:ACCOUNT-:REGION-:ENV') %>-"
container_definitions = <%= output('container.json_map_encoded_list') %>
