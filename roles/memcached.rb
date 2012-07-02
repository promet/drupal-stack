name "memcached"
description "Memcached server role"
run_list(
    "recipe[memcached]"
)

default_attributes(
  :memcached => {
    :memory => 256,
    :user => "www-data",
    :listen => "127.0.0.1"
  }
)
