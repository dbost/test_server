FROM ubuntu:14.04
MAINTAINER Daniel Bost <dbost@virtualhold.com>
RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y libreadline6-dev
RUN apt-get install -y zlib1g-dev
RUN apt-get install -y libssl-dev
RUN apt-get install -y libyaml-dev
RUN apt-get install -y libsqlite3-dev
RUN apt-get install -y sqlite3
RUN apt-get install -y autoconf
RUN apt-get install -y libgdbm-dev
RUN apt-get install -y libncurses5-dev
RUN apt-get install -y automake
RUN apt-get install -y libtool
RUN apt-get install -y bison
RUN apt-get install -y pkg-config
RUN apt-get install -y libffi-dev
RUN apt-get install -y git
RUN apt-get install -y rabbitmq-server
RUN apt-get install -y curl
RUN curl -ksSL https://cache.ruby-lang.org/pub/ruby/2.2/ruby-2.2.0.tar.gz | tar xzf -
RUN cd ruby-2.2.0 && ./configure
RUN cd ruby-2.2.0 && make
RUN cd ruby-2.2.0 && sudo make install
RUN rm -rf ruby-2.2.0
RUN gem install bundle
RUN gem install aws-sdk
ADD ./s3fetch /usr/local/bin/
