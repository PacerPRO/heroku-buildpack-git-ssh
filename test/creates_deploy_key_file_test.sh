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

  assertEquals `echo xyz | base64` `cat ~/.ssh/auto_installed_deploy_key`
}