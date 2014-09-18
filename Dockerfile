# name elasticsearch_twitter_river
FROM dockerfile/elasticsearch
# MAINTANER iwag

# overwrite config
ADD ./elasticsearch.yml /tmp/elasticsearch.yml
RUN cp /tmp/elasticsearch.yml /elasticsearch/config/elasticsearch.yml

RUN mkdir /elasticsearch/data

# Install 
# 2.3.0 for ES 1.3
# https://github.com/elasticsearch/elasticsearch-river-twitter
RUN /elasticsearch/bin/plugin -install elasticsearch/elasticsearch-river-twitter/2.3.0

