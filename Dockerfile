FROM ruby:2.3

WORKDIR /docker-demo

COPY Gemfile /docker-demo/Gemfile
COPY Gemfile.lock /docker-demo/Gemfile.lock

ENV RAILS_ENV development

RUN bundle install

COPY . /docker-demo

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
