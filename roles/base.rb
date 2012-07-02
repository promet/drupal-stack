name "base"
description "Base role"
run_list(
  "recipe[vim]",
  "recipe[git]",
  "recipe[postfix]"
  #"recipe[users]",
  #"recipe[sudo]"
)
