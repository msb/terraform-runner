#!/usr/bin/env bash

# Copy the TF project into the working directory. If `default.tf` is defined
# in the project, it overrides the container's file.
cp -r /project/* /build/

# Run terraform on the project
terraform $@
