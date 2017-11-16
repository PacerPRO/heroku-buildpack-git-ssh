#!/usr/bin/env bash

. ${BUILDPACK_TEST_RUNNER_HOME}/lib/test_utils.sh

testCreateKeyFile()
{
  compile

  assertCapturedSuccess
}

testKeyFileIsCorrect()
{
  compile

  assertEquals xyz `cat ~/.ssh/auto_installed_deploy_key`
}