FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.9.5

RUN gem install deployto --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["deploy"]
CMD ["--help"]
