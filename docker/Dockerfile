FROM ruby:1.9
RUN apt-get update -qq && apt-get install --no-install-recommends -y \
	nodejs postgresql-client git
RUN git clone https://github.com/openborders/tolerance.git /tolerance
WORKDIR /tolerance/ror_app
RUN bundle install

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
