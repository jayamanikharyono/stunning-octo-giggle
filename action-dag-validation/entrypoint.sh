#!/bin/sh

cd ..

echo current dir $PWD

pwd

ls

ls dags

python action-dag-validation/dag_validation_test.py


echo Hello world my name is $INPUT_MY_NAME
