#!/bin/bash
echo "Test Start"
{ # try
                        docker run --rm \
                                -v /home/dbt/jenkins_home/workspace/$1:/$1 \
                                python:latest \
                                pytest /$1/test/dag_validation_test.py

} || { # catch
                        echo "Rebuild Docker Images"
                        cd /home/dbt/jenkins_home/workspace/$1/docker/python/
                        ./build.sh
                        cd /home/dbt/jenkins_home/workspace/$1/test/
                        docker run --rm \
                                -v /home/dbt/jenkins_home/workspace/$1/:/$1 \
                                python:latest \
                                pytest /$1/test/dag_validation_test.py
}
echo "Test Done"
