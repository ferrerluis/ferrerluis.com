FROM ruby:2.5.1

RUN mkdir /srv/jekyll
WORKDIR /srv/jekyll

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . ./

CMD ["bundle", "exec", "jekyll", "serve", "-H", "0.0.0.0", "--watch", "--incremental"]