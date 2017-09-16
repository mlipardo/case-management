FROM ruby:2.4.1
ENV ENVIRONMENT_REFRESH 2017-09-08
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update -qq && apt-get install -y build-essential libpq-dev yarn && \
    rm -rf /var/lib/apt/lists/*
RUN mkdir /app
WORKDIR /app
RUN gem install foreman
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
ADD package.json /app/package.json
ADD yarn.lock /app/yarn.lock
RUN bundle install && yarn install
ADD . /app
RUN ./bin/webpack
EXPOSE 3000 3035
CMD ["foreman", "start", "-f", "Procfile.dev", "-p", "3000"]
