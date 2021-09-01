FROM ruby:2.6.0
EXPOSE 3000
WORKDIR /app
COPY . .
RUN gem install bundler && bundle install
CMD bundle exec rackup -p 3000 --host 0.0.0.0
