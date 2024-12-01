terraform {
  required_providers {
    cloudsmith = {
      source = "cloudsmith-io/cloudsmith"
      version = "0.0.56"
    }
  }
}

data "external" "this" {
  program = ["bash", "${path.module}/fetch_cloudsmith_token.sh"]
}

provider "cloudsmith" {
  api_key = data.external.this.result.token
}

data "cloudsmith_user_self" "this" {
}

output "cloudsmith_user_self" {
  value = data.cloudsmith_user_self.this
}
