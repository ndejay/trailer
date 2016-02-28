# Base image
FROM ruby:2.2

ENV HOME /home/rails/webapp
ENV RAILS_ENV=production
 
# Install Software + JS + PG
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs postgresql-client

WORKDIR $HOME

# Add the app code
ADD . $HOME

RUN bundle install

# Command.
EXPOSE 3000
CMD ["sh", "init.sh"]
