FROM ruby:3.0

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

WORKDIR /usr/src/app

# gemfileになにも記載がないとbundle installでこけるので、一旦コメントアウト
# COPY Gemfile Gemfile.lock ./
# RUN bundle install

COPY . .

CMD ["irb"]


# 参照：https://hub.docker.com/_/ruby
# スクリプト実行方法：
# docker run -it --rm --name ruby -v "$PWD":/usr/src/myapp -w /usr/src/myapp ruby:3.0 ruby script/rgb.rb[実行したいファイル]
# テスト実行；
# docker run -it --rm --name ruby  -v "$PWD":/usr/src/myapp -w /usr/src/myapp ruby:3.0 ruby test/rgb_test.rb[実行したいファイル]
# docker run -it --rm --name ruby  -v "$PWD":/usr/src/myapp -w /usr/src/myapp ruby:3.0 ruby test/convert_length_test.rb

# imageの確認
# docker images
# docker起動して、irb開く
# docker run --rm -it my-ruby-app irb