name "production"
description "The master PROD branch"
cookbook_versions({
    "nginx" => "<= 0.1.0",
    "apt" => "= 0.1.0"
})
override_attributes ({
    "nginx" => {
        "listen" => [ "80", "443" ]
    },
    "mysql" => {
        "root_pass" => "GFHK&HGGJHHJ"
    }
})

