#!/bin/sh
echo current dir $PWD

pwd

ls

cd dags

python ../action-dag-validation/dag_validation_test.py

echo Hello world my name is $INPUT_MY_NAME
