FROM python:latest
RUN mkdir /app
ADD deploy/ /app
WORKDIR /app
RUN pip install -r requirements.txt
CMD ["python", "app.py"]
