FROM python:3.9-bullseye
WORKDIR /app
COPY myproject /app
COPY requirements.txt /app
RUN pip install -r requirements.txt
EXPOSE 8000
CMD ["python","manage.py","runserver","0.0.0.0:8000"]