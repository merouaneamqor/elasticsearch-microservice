# Specify the base image
FROM docker.elastic.co/elasticsearch/elasticsearch:${ELASTICSEARCH_VERSION}

# Copy the Elasticsearch configuration file into the container
COPY elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml

# Expose the default Elasticsearch port
EXPOSE 9200

# The entrypoint is inherited from the base image, so it does not need to be redefined
