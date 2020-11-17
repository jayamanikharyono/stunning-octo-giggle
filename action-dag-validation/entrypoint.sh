#!/bin/sh -l
sh -c "echo current dir $PWD"

pytest $GITHUB_WORKSPACE/test/dag_validation_test.py

sh -c "echo Hello world my name is $INPUT_MY_NAME"
