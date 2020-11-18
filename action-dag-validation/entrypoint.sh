#!/bin/sh
echo "Start Testing"

#cd dags

pytest action-dag-validation/dag_validation_test.py

#cp ../action-dag-validation/dag_validation_test.py dag_validation_test.py
#pytest dag_validation_test.py

echo "Testing Done"
