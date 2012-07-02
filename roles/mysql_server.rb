name "mysql_server"
description "MySQL server role"
run_list(
    "recipe[mysql::server]"
)
default_attributes(
  :mysql => {
    :bind_address => "0.0.0.0",
    :tunable => {
      :key_buffer => "384M",
      :table_cache => "4096",
      :query_cache_size => "128M",
      :max_heap_table_size => "128M"
    }
  }
)

