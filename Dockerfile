FROM ubuntu:14.04
MAINTAINER Daniel Bost <dbost@virtualhold.com>
RUN apt-get update && apt-get install -y ruby ruby-dev
RUN gem install sinatra
