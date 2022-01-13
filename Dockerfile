FROM ruby:alpine3.15

RUN apk update && apk add --virtual build-dependencies build-base libc6-compat

ENV APP_HOME=/app

WORKDIR $APP_HOME

RUN mkdir -p $APP_HOME

COPY . $APP_HOME/

RUN bundle
