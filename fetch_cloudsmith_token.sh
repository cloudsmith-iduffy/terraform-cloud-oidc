#!/usr/bin/env bash

set -eux

curl -X POST -H "Content-Type: application/json" -d "{\"oidc_token\": \"$TFC_WORKLOAD_IDENTITY_TOKEN\", \"service_slug\":\"terraform-nakm\"}" https://api.cloudsmith.io/openid/iduffy-demo/
