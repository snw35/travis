FROM ruby:2.7.2-alpine3.12

ENV TRAVIS_VERSION 1.10.1.travis.1321.9

COPY docker-entrypoint.sh /docker-entrypoint.sh

RUN apk --update --no-cache upgrade -a \
  && apk --update --no-cache add \
    bash \
    bash-completion \
    ca-certificates \
    coreutils \
    openssh-client \
    shadow \
    su-exec \
    git \
  && apk --upgrade --no-cache --virtual build.deps add \
    build-base \
  && gem install travis -v ${TRAVIS_VERSION} \
  && apk del build.deps \
  && apk --upgrade --no-cache add \
    bash \
  && chmod +x /docker-entrypoint.sh \
  && travis --help

COPY bashrc /etc/bashrc

ENV SSH_AUTH_SOCK /tmp/agent.sock

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["ssh-agent", "-d", "-s", "-a", "/tmp/agent.sock"]
