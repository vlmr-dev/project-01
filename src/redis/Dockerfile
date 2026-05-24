# Set the base image
FROM redis:7-alpine

# Copy custom configuration
COPY redis.conf /usr/local/etc/redis/redis.conf

# Build argument
ARG REDIS_HOSTS

# Environment
ENV REDIS_HOSTS=${REDIS_HOSTS}

# Default port
EXPOSE 6379

# Start Redis
CMD ["sh", "-c", "redis-server /usr/local/etc/redis/redis.conf --requirepass $REDIS_PASSWORD"]
