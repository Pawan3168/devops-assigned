FROM python:3.9

WORKDIR /data

COPY requirements.txt /data/

RUN pip install --no-cache-dir -r requirements.txt

COPY . .



EXPOSE 8000

CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]
