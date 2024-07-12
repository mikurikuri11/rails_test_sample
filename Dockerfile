FROM ruby:3.1

RUN set -eux && \
  apt-get update -qq && \
  apt-get install -y \
  postgresql-client

WORKDIR /rails_test_sample

COPY Gemfile Gemfile.lock /rails_test_sample/

RUN bundle install