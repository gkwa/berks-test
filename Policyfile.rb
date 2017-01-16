name "example-application-service"
default_source :supermarket
run_list "elasticsearch::default"
cookbook "elasticsearch", "= 3.0.2", github: "elastic/cookbook-elasticsearch"
