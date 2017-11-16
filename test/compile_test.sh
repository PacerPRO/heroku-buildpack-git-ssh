#!/usr/bin/env bash

. ${BUILDPACK_TEST_RUNNER_HOME}/lib/test_utils.sh

testCompile()
{
  compile

  assertCapturedSuccess
}

testKeyFile()
{
  compile

  assertCaptured "-----> Setting up ssh"

  assertTrue "[ -f ~/.ssh/auto_installed_deploy_key ]"
}

testConfigFile()
{
  compile

  assertTrue "[ -f ~/.ssh/config ]"
}

testSSHTest()
{
  compile

  ssh git@github.com 2>&1 | grep -q "You've successfully authenticated, but GitHub does not provide shell access."

  result=$?

  assertEquals 0 $result
}