#!/usr/bin/env bats

@test "ensure chef install is successful" {
	run chef install &>/dev/null
}
