FROM ruby:3.0.2

RUN apt-get update -qq && apt-get install -y nodejs && rm -rf /var/lib/atp/lists/*

WORKDIR /myapp

COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock

RUN bundle install

COPY . ./myapp

CMD ["rails", "server", "-b", "0.0.0.0"]
