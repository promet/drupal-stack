name "percona_server"
description "Percona server role"
run_list(
    "recipe[percona-install::server]"
)
