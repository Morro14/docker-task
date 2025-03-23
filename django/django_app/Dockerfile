FROM python:3.12-slim

RUN mkdir -p /home/django_app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN addgroup --system django_app && adduser --system --group django_app

ENV HOME=/home/django_app
ENV APP_HOME=/home/django_app/web
RUN mkdir $APP_HOME
RUN mkdir $APP_HOME/staticfiles
WORKDIR $APP_HOME

RUN apt-get update && \
    apt-get install -y --no-install-recommends gcc

RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt

COPY ./entrypoint.sh .
RUN sed -i 's/\r$//g' $APP_HOME/entrypoint.sh
RUN chmod +x $APP_HOME/entrypoint.sh

COPY . $APP_HOME


RUN chown -R django_app:django_app $APP_HOME


USER django_app

ENTRYPOINT ["/home/django_app/web/entrypoint.sh"]