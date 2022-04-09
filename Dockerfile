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
# スクリプト実行方法：
# docker run -it --rm --name my-running-script -v "$PWD":/usr/src/myapp -w /usr/src/myapp ruby:3.0 ruby your-daemon-or-script.rb[実行したいファイル]