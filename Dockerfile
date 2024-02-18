# Use the official Elasticsearch image as the base
FROM docker.elastic.co/elasticsearch/elasticsearch:7.10.0

# Set the discovery type to single-node for simplicity, suitable for development and testing environments.
ENV discovery.type=single-node

# Adjust JVM heap size to be more suitable for low-memory environments.
# Note: These values might need to be adjusted based on your specific server capabilities and requirements.
ENV ES_JAVA_OPTS="-Xms256m -Xmx256m"

# Although the EXPOSE instruction does not publish the port by itself, it documents which ports the container listens on.
EXPOSE 9200 9300

# Additional configuration to address permission issues and ensure Elasticsearch starts correctly.
# Elasticsearch Docker images include an entrypoint script that takes care of changing file ownership and permissions at startup.
# However, if you're encountering permissions issues with signal forwarding, consider customizing the entrypoint or command, ensuring it's compatible with your deployment environment.

# For environments like Render.com, ensure your service configuration is set to map exposed container ports to the expected HTTP ports externally.
