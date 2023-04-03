FROM ruby:2.7.6
RUN apt-get update && apt-get install -y npm && npm install -g yarn
WORKDIR /app
COPY Gemfile* .
RUN bundle install
COPY . .
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]