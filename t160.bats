#!/usr/bin/env bats

@test "ensure .berkshelf elasticsearch is same as .chefdk's copy" {
	result="$(diff --brief --recursive ~/.chefdk/cache/cookbooks/elasticsearch*/attributes/default.rb ~/.berkshelf/cookbooks/elasticsearch*/attributes/default.rb)"
	[[ $status -eq 0 ]]
}
