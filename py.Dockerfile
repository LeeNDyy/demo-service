FROM python:3.10-alpine3.22

WORKDIR /myapp

COPY ./flask/ . 

RUN pip3 install -r requirements.txt

CMD ["python3", "/myappflask/app.py"]