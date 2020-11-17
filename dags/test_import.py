from datetime import datetime as dt
from datetime import timedelta
from airflow.utils.dates import days_ago


from airflow import DAG
from airflow.operators.python_operator import PythonOperator
from airflow.operators.dummy_operator import DummyOperator

import util
#list import test
from pathlib import Path
from tabulate import tabulate
from sqlalchemy import create_engine

from tqdm import tqdm

DAG_ID = util.get_dag_id(__file__)

default_args = {
    'owner' : 'DE',
    'depends_on_past' : False,
    'start_date' : days_ago(2),
    'email' : ['example@123.com'],
    'email_on_failure' : False,
    'email_on_retry' : False,
    'retries' : 0,
    'retry_delay' : timedelta(minutes=5)
}

dag = DAG(
    DAG_ID,
    description = 'dag to test import',
    default_args = default_args,
    access_control = {
        'DE' : {'can_dag_read', 'can_dag_edit'},
        'BI' : {'can_dag_read'}
    },
    schedule_interval = timedelta(days = 1)
)

def print_hello():
    return ("import success!")


dummy_task_1 = DummyOperator(
                    task_id = 'dummy_task',
                    retries = 0,
                    dag = dag
                )



hello_task_2 = PythonOperator(
                    task_id = 'hello_task',
                    python_callable = print_hello,
                    dag = dag
                )


dummy_task_1 >> hello_task_2
