#!/bin/sh -l
pytest $GITHUB_WORKSPACE/test/dag_validation_test.py

sh -c "echo Hello world my name is $INPUT_MY_NAME"
