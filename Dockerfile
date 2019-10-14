FROM ruby:2.6.5-alpine3.10

ENV TRAVIS_VERSION 1.8.10

COPY docker-entrypoint.sh /docker-entrypoint.sh

RUN apk --upgrade --no-cache --virtual build.deps add \
    build-base \
  && gem install travis -v ${TRAVIS_VERSION} \
  && apk del build.deps \
  && apk --upgrade --no-cache add \
    bash \
  && chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["travis"]
