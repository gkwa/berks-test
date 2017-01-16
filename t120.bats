#!/usr/bin/env bats

@test "ensure berks install is successfull" {
	run berks install --quiet
}

