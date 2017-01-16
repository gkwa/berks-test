#!/usr/bin/env bats

@test "ensure .berkshelf elasticsearch is same as .chefdk's copy" {
	result="$(diff ~/.chefdk/cache/cookbooks/elasticsearch*/attributes/default.rb ~/.berkshelf/cookbooks/elasticsearch*/attributes/default.rb)"
	[[ $status -eq 0 ]]
}
