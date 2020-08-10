FROM ruby:2.7.1

# Install system dependencies and bundler gem.
RUN apt-get update -qq && \
    apt-get install -y --no-install-recommends apt-utils build-essential && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    gem install bundler

# Set application directory.
ENV APP_HOME /current
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

# Copy application code into container and install application dependencies.
COPY src/ $APP_HOME/
RUN bundle install
