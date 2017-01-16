#!/usr/bin/env bats

@test "ensure there is exactly one version of elasticsearch in .berkshelf folder" {
	  result=$(ls -d ~/.berkshelf/cookbooks/elasticsearch*|wc -l)
	  [[ $result -eq 1 ]]
}
