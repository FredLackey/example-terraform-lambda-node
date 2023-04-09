#!/bin/sh

set -e

cd ../read-s3
npm ci

cd ../terraform
terraform apply
