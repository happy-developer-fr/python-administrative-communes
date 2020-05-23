FROM python:3.7-alpine

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY sample /usr/src/app/sample/
COPY *.py /usr/src/app/

CMD [ "python", "./main.py" ]
