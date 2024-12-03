ARG CP_SCHEMA_REGISTRY_VERSION=7.8.0

FROM confluentinc/cp-schema-registry:${CP_SCHEMA_REGISTRY_VERSION}

ARG AWS_MSK_IAM_AUTH_VERSION=2.2.0

LABEL maintainer="Iván Alejandro Marugán <hello@ialejandro.rocks>"                         \
      description="Add MSK IAM auth library (https://github.com/aws/aws-msk-iam-auth)"

# Add AWS_MSK_IAM_AUTH_VERSION library
ADD --chown=root:root https://github.com/aws/aws-msk-iam-auth/releases/download/v${AWS_MSK_IAM_AUTH_VERSION}/aws-msk-iam-auth-${AWS_MSK_IAM_AUTH_VERSION}-all.jar /usr/share/java/schema-registry/
