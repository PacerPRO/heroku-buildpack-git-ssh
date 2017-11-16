#!/usr/bin/env bash

. ${BUILDPACK_TEST_RUNNER_HOME}/lib/test_utils.sh

testCreateKeyFile()
{
  assertEquals 1 1

  compile

  assertCapturedSuccess
}
