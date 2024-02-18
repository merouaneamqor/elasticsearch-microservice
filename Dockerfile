FROM docker.elastic.co/elasticsearch/elasticsearch:7.10.0

# Example: Setting discovery type to single-node for simplicity
ENV discovery.type=single-node

# Expose default ports (Optional here since EXPOSE doesn't actually publish ports)
EXPOSE 9200 9300
