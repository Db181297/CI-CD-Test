FROM python:3.10-slim
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

WORKDIR /app

COPY . .

CMD ["python", "app.py", "runserver", "0.0.0.0:8080"]

EXPOSE 8080
