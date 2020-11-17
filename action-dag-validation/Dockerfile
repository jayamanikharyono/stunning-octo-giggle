FROM python:3.6

ADD entrypoint.sh /entrypoint.sh

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
