import os


def get_dag_id(file):
    parts = os.path.abspath(file).split("/")
    print(parts)
    if 'gcs' != parts[-3]:
       DAG_ID = parts[-3] + "___" + os.path.basename(file).replace(".pyc", "").replace(".py", "")
    else:
       DAG_ID = os.path.basename(file).replace(".pyc", "").replace(".py", "")
    return DAG_ID
