FROM ruby:3.0.2

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
  && echo 'deb http://dl.yarnpkg.com/debian/ stable main' > /etc/apt/sources.list.d/yarn.list

RUN apt-get update -qq \
    && apt-get install -y nodejs \
    && apt-get install -y yarn \
    && rm -rf /var/lib/atp/lists/*

WORKDIR /app
