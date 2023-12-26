terraform {
  required_version = "1.6.6" # Required terraform CLI Version on that system
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.6.0"
    }
  }
}

resource "random_string" "random" {
  length  = 16
  special = false
  upper   = false
}

output "random_string_out" {
  value = random_string.random.result
}
