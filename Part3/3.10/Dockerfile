FROM python:3.8-slim-buster

ENV PYTHONDONTWRITEBYTHECODE 1
ENV PYTHONUNBUFFERED 1

RUN addgroup --system myuser && adduser --system --group myuser

ENV PATH=/home/myuser/.local/bin:$PATH

USER myuser

WORKDIR /home/myuser

COPY --chown=myuser:myuser requirements.txt .

RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

COPY --chown=myuser:myuser . .

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
