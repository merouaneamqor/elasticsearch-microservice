# Use the official Elasticsearch image as a parent image
FROM docker.elastic.co/elasticsearch/elasticsearch:7.9.3

# Set environment variables (for example, to enable security features)
ENV xpack.security.enabled=true
ENV discovery.type=single-node

# Copy custom configuration file into the container
COPY elasticsearch.yml /usr/share/elasticsearch/config/

# Copy custom scripts or plugins if needed
# COPY plugins/ /usr/share/elasticsearch/plugins/

# Expose the default Elasticsearch port
EXPOSE 9200

# The entrypoint and command are inherited from the parent image, so they don't need to be redefined
