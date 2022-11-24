FROM python:3.8-alpine
WORKDIR /srv/app
COPY . .
RUN pip install --upgrade pip && pip install --no-cache-dir -r requirements.txt
ENTRYPOINT ["python3","./web.py"]
EXPOSE 5000
