terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.3"
    }
  }
}

resource "local_file" "test_file" {
  content  = "test pour Module 1"
  filename = "test.txt"
}
