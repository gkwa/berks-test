name "example-application-service"
default_source :supermarket
run_list "elasticsearch::default"
cookbook "elasticsearch", github: "elastic/cookbook-elasticsearch", branch: "master"
