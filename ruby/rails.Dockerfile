FROM ruby:2.4.3

ADD ./rails /rails
WORKDIR /rails

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN bundle install
