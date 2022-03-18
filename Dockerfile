FROM ruby:2.7.5

WORKDIR /var/www/hello-devops

ADD . .

RUN bundle install

EXPOSE 4567

RUN chown -R www-data /var/www/hello-devops

USER www-data

#CMD ["bundle exec rackup --host 0.0.0.0 -p 4567"]


