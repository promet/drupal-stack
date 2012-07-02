name "drupal"
description "Drupal role"
run_list(
    "role[base]",
    "role[percona_server]",
    "role[apache2]",
    "role[memcached]",
    "recipe[drupal::drush]"
    #role[varnish],
    #role[solr]
)
default_attributes(
)
