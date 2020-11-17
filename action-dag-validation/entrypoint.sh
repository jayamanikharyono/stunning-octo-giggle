#!/bin/sh -l
sh -c "echo current dir $PWD"

sh -c "ls"

#pytest ./test/dag_validation_test.py
python ./action-dag-validation/dag_validation_test.py

sh -c "echo Hello world my name is $INPUT_MY_NAME"
