#!/bin/sh
echo "Start Testing"

cd dags

pytest ../action-dag-validation/dag_validation_test.py

echo "Testing Done"
