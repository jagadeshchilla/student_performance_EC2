FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt .

RUN apt update -y && apt install awscli -y
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8080

CMD ["python", "app.py"]