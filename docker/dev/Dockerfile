FROM ruby:3.1.1

ARG APP_ROOT=/var/app/current
ARG PACKAGES='apt-utils build-essential'

RUN apt update -qq && \
    apt install -y --no-install-recommends ${PACKAGES} && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p $APP_ROOT
COPY . $APP_ROOT
WORKDIR $APP_ROOT

RUN bundle install
