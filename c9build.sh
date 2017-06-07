#!/bin/bash

mkdir -p $HOME/bin
curl -s https://testspace-client.s3.amazonaws.com/testspace-linux-dev.tgz | tar -zxvf- -C $HOME/bin
testspace config url http://095d8acfaaf71b4a0f3767e41152620ebdda1b31:@s2.stridespace.com/s2technologies:testspace.test.ci
testspace -v

testspace results.xml "standalone#c9.build"