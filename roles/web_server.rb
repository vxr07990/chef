name "web_server"
description "A role to configure our front-line web servers"
run_list "recipe[nginx::default]"
env_run_lists  "_default" => ["recipe[nginx::default]"], "production" => ["recipe[nginx::config_prod]"], "testing" => ["recipe[nginx::default]"]
default_attributes "nginx" => { "log_location" => "/var/log/nginx.log" }
override_attributes "nginx" => { "gzip" => "on" }

