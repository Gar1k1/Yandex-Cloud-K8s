terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }

  backend "s3" {
    endpoints = {
      s3 = "https://storage.yandexcloud.net"
    }
    bucket = "my-terraform-bucket"
    region = "ru-central1"
    key    = "<terraform/state.tfstate"

    skip_region_validation      = true
    skip_credentials_validation = true
    skip_requesting_account_id  = true # This option is required to describe a backend for Terraform version 1.6.1 or higher.
    skip_s3_checksum            = true # This option is required to describe a backend for Terraform version 1.6.3 or higher.

  }
}

provider "yandex" {
service_account_key_file = "/home/garik/PiggyMetrics-K8s/terraform-key.json"
  cloud_id               = "b1gc50p1kc7msn8lt9db"
  folder_id              = "b1gud4bahvag71pk0hvr"
}
