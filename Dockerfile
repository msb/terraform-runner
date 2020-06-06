# extend from the hashicorp container
FROM hashicorp/terraform:light

# terraform config is stored here allowing projects to be "remembered"
VOLUME /terraform

# the source project is looked for here
VOLUME /project

# this is where the terrform project will used (copied by terraform.sh)
WORKDIR /build

# include bash for convenience
RUN apk add bash

# script to run terraform
ADD terraform.sh /scripts/

# if no backend is defined, this configures TF to store project state in `/terraform`
ADD backend.tf /build
# also store the terraform config in `/terraform`
ENV TF_DATA_DIR=/terraform/.terraform

# script to run terraform
ENTRYPOINT ["/scripts/terraform.sh"]
