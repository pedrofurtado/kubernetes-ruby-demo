FROM ruby:3.0-alpine
EXPOSE 3000
WORKDIR /app
COPY . .
RUN bundle install
CMD bundle exec rackup -p 3000 --host 0.0.0.0
