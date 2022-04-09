FROM ruby:3.0

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

WORKDIR /usr/src/app

# gemfileになにも記載がないとbundle installでこけるので、一旦コメントアウト
# COPY Gemfile Gemfile.lock ./
# RUN bundle install

COPY . .

CMD ["./fizz_buzz.rb"]


# 参照：https://hub.docker.com/_/ruby