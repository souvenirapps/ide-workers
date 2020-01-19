#!/usr/bin/env bats

@test "test cpp" {
    bash tests/cpp/test_worker.sh
}

@test "test c" {
    bash tests/c/test_worker.sh
}

@test "test cpp-timeout" {
    bash tests/cpp-timeout/test_worker.sh
}

@test "test c-timeout" {
    bash tests/c-timeout/test_worker.sh
}
