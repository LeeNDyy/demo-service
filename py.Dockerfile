FROM python3.10-alpine3.22

WORKDIR /myapp

COPY ./flask . && \
    ./requirements.txt ./

RUN pip3 install -r requirements.txt

CMD ["python3", "/flask/app.py"]