FROM ruby:2.2.4
WORKDIR /app
COPY ./Gemfile .
COPY ./Gemfile.lock .
RUN gem install bundle
RUN bundle install
RUN rm Gemfile Gemfile.lock

