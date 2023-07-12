FROM python:3.11-slim

RUN apt-get update && apt-get install -y git jq

RUN pip install aicodebot

COPY aicodebot_action.py /aicodebot_action.py

RUN chmod +x /aicodebot_action.py

ENTRYPOINT ["/aicodebot_action.py"]

