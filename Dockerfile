FROM python:3.13.2

WORKDIR /web

COPY . .

RUN pip install -r requirements.txt

RUN python manage.py migrate

CMD ["python","manage.py","runserver","0.0.0.0:8000"]
