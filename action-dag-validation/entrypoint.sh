#!/bin/sh -l
pytest test/dag_validation_test.py

sh -c "echo Hello world my name is $INPUT_MY_NAME"
