# Set the base image
FROM postgres:16-alpine

# Copy custom configuration
COPY init.sql /docker-entrypoint-initdb.d/

# Build argument
ARG POSTGRES_USER
ARG POSTGRES_PASSWORD
ARG POSTGRES_HOST
ARG POSTGRES_PORT
ARG POSTGRES_DB

# Environment
ENV POSTGRES_USER=${POSTGRES_USER}
ENV POSTGRES_PASSWORD=${POSTGRES_PASSWORD}
ENV POSTGRES_HOST=${POSTGRES_HOST}
ENV POSTGRES_PORT=${POSTGRES_PORT}
ENV POSTGRES_DB=${POSTGRES_DB}

# Default port
EXPOSE 5432

# Start Postgres
CMD ["docker-entrypoint.sh", "postgres"]
