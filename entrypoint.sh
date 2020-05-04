#!/bin/sh

set -e

echo "aws version"

aws --version

echo "Attempting to update kubeconfig for aws"

aws eks --region "$INPUT_AWS_REGION" update-kubeconfig --name "$INPUT_CLUSTER_NAME"
aws sts get-caller-identity
pwd
ls
sh "$@"