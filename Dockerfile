FROM python:3.10

COPY . /app/
WORKDIR /app/
RUN pip3 install --no-cache-dir -U -r requirements.txt

CMD gunicorn app:app & python3 -m AutoAnimeBot
