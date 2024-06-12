FROM python:3.12.3-alpine

ENV LANG="C.UTF-8"

WORKDIR /app

RUN apk update && \
    apk upgrade && \
    apk add --no-cache --update build-base

COPY ./django_app .

EXPOSE 8000

CMD ["python", "manage.py" "runserver"]