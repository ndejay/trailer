# Base image
FROM ruby:2.2

ENV HOME /home/rails/webapp

# Install Software + JS + PG
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

WORKDIR $HOME

# Install gems
ADD Gemfile* $HOME/
RUN bundle install

# Add the app code
ADD . $HOME

# Command.
CMD ["rails", "server", "--binding", "0.0.0.0"]
