# Set the base image
FROM evoapicloud/evolution-api:latest

# Argumentos de build
ARG AUTHENTICATION_API_KEY

# Env
ENV AUTHENTICATION_API_KEY=${AUTHENTICATION_API_KEY}

#
RUN cd /evolution && npm install @aws-sdk/client-sqs@3.450.0 --ignore-scripts 2>/dev/null || true

#
ENTRYPOINT ["/bin/sh", "-c", ". ./Docker/scripts/deploy_database.sh && npm run start:prod"]

# Default port
EXPOSE 8080

# Default volume
VOLUME ["/evolution/data"]
