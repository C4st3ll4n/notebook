FROM ruby:2.6.3

WORKDIR /api
COPY . .

RUN bundle install
EXPOSE 9292
EXPOSE 3000

CMD ["/api/app.sh"]
