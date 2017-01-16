#!/usr/bin/env bats

@test "ensure there is exactly one version of elasticsearch in .chefdk folder" {
	  result=$(ls -d ~/.chefdk/cache/cookbooks/elasticsearch*|wc -l)
	  [[ $result -eq 1 ]]
}
