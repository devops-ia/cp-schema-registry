# syntax=docker/dockerfile:1

ARG CP_SCHEMA_REGISTRY_VERSION=8.1.1

FROM confluentinc/cp-schema-registry:${CP_SCHEMA_REGISTRY_VERSION}

ARG AWS_MSK_IAM_AUTH_VERSION=2.3.5

LABEL org.opencontainers.image.authors="Iván Alejandro Marugán <projects@ialejandro.rocks>" \
      org.opencontainers.image.title="Confluent Schema Registry with AWS MSK IAM Auth" \
      org.opencontainers.image.description="Confluent Schema Registry with AWS MSK IAM authentication library" \
      org.opencontainers.image.version="${CP_SCHEMA_REGISTRY_VERSION}" \
      org.opencontainers.image.source="https://github.com/aws/aws-msk-iam-auth" \
      org.opencontainers.image.documentation="https://github.com/aws/aws-msk-iam-auth"

# hadolint ignore=DL3020
ADD --chown=appuser:appuser \
    https://github.com/aws/aws-msk-iam-auth/releases/download/v${AWS_MSK_IAM_AUTH_VERSION}/aws-msk-iam-auth-${AWS_MSK_IAM_AUTH_VERSION}-all.jar \
    /usr/share/java/schema-registry/aws-msk-iam-auth.jar

USER appuser
