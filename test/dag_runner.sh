#!/bin/bash
echo "DAG run Start"
docker run --rm --volumes-from gcloud-config google/cloud-sdk gcloud composer environments run test-env --location asia-northeast1 trigger_dag -- $1
echo "DAG run Done"
