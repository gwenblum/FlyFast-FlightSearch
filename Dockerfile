FROM python:3.8-slim-buster
# TODO: upgrade to 3.11 ()
# FROM python:3.11-slim-buster
RUN apt update
RUN apt-get update && apt-get install build-essential -y

WORKDIR /app
COPY . .

RUN pip install -r requirements.txt

EXPOSE 8080
ENV PYTHONPATH /app/ajax
CMD [ "python3", "src/main.py" ]
