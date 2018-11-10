FROM ruby:2.5.1
MAINTAINER Chen I Chang <chenicha@buffalo.edu>
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
        && apt-get install -y nodejs

RUN mkdir /pubsub_1
WORKDIR /pubsub_1

COPY Gemfile /pubsub_1/Gemfile
COPY Gemfile.lock /pubsub_1/Gemfile.lock
RUN bundle install
COPY . /pubsub_1
