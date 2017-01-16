#!/usr/bin/env bats

inital()
{
	rm -rf ~/.berkshelf/cookbooks/elasticsearch*
	rm -rf ~/.chefdk/cache/cookbooks/elasticsearch*
	rm -f Berksfile.lock
	rm -f Policyfile.lock.json
}

run inital

@test "ensure Berksfile.lock is gone" {
	test ! -f Berksfile.lock
}

@test "ensure Policyfile.lock.json is gone" {
	test ! -f Policyfile.lock.json
}

@test "ensure elasticsearch is gone from .berkshelf" {
	test ! -f ~/.berkshelf/cookbooks/elasticsearch*/attributes/default.rb
}

@test "ensure elasticsearch is gone from .chefdk" {
	test ! -f ~/.chefdk/cache/cookbooks/elasticsearch*/attributes/default.rb
}
