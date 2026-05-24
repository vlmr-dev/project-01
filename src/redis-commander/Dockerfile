# Set the base image
FROM node:18-alpine

#
RUN npm install -g redis-commander@0.9.0

# Default port
EXPOSE 8081

#
CMD ["redis-commander", "--redis-port", "6379", "--redis-host", "redis"]
