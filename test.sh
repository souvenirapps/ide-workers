#!/usr/bin/env bats

@test "test cpp" {
    bash tests/cpp/test_worker.sh
}

@test "test c" {
    bash tests/c/test_worker.sh
}
