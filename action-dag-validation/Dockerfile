FROM python:3.6

ADD entrypoint.sh /entrypoint.sh

ADD requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt


ENV AIRFLOW_HOME=/github/workspace
ENV PYTHONPATH "${PYTHONPATH}:${AIRFLOW_HOME}"

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
