#!/bin/sh
sh -c "echo current dir $PWD"

sh -c "ls"

sh -c "ls dags"

#pytest ./test/dag_validation_test.py
sh -c "python action-dag-validation/dag_validation_test.py"


sh -c "echo Hello world my name is $INPUT_MY_NAME"
