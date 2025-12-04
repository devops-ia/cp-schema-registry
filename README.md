# Image base cp-schema-registry with MSK IAM auth

## Introduction

Image base with `cp-schema-registry` and `aws-msk-iam-auth` library for [helm-cp-schema-registry](https://github.com/devops-ia/helm-charts/tree/main/charts/cp-schema-registry) to allow [MSK IAM auth](https://github.com/aws/aws-msk-iam-auth) for [Amazon MSK](https://aws.amazon.com/en/msk/).

Default base versions:

* cp-schema-registry: `8.1.1`
* aws-msk-iam-auth: `2.3.5`

## Image details (from dive)

```text
│ Image Details ├─────────────

Total Image size: 2.0 GB
Potential wasted space: 66 MB
Image efficiency score: 97 %
```

You can reproduce this summary with [`dive`](https://github.com/wagoodman/dive):

```command
dive build -t <tag-name> .
```

## Quick start

[**Available images**](https://hub.docker.com/r/devopsiaci/cp-schema-registry/tags)

### Run container

```command
docker run --name <container-name> 7.4.0
```

## Use case

This image is used by [helm-cp-schema-registry](https://github.com/devops-ia/helm-charts/tree/main/charts/cp-schema-registry)
