FROM python:3.6

ADD entrypoint.sh /entrypoint.sh

ADD requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

RUN chmod +x /entrypoint.sh

#CMD ["ls"]
CMD [ "pytest", "action-dag-validation/dag_validation_test.py" ]
