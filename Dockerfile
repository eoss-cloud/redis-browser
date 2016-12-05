FROM ruby
MAINTAINER Thilo Wehrmann <thilo.wehrmann@eoss.cloud>
LABEL Description="Madxxx docker image for ruby appications" Vendor="EOSS GmbH" Version="1.0"

RUN mkdir /ruby
WORKDIR /ruby
ADD . /ruby
RUN bundle install

#ADD redis-browser.yaml /ruby/redis-browser.yaml
CMD redis-browser --config /ruby/redis-browser.yaml
