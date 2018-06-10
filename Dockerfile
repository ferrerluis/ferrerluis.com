FROM ruby:2.5.1

RUN mkdir /srv/jekyll
WORKDIR /srv/jekyll

RUN bundle install

CMD ["bundle", "exec", "jekyll", "serve", "--watch", "--incremental"]