terraform {

  required_version = "~> 1.9.0"

  required_providers {

    aws = {

      source           = "hashicorp/aws"
      version          = "~> 5.58.0"
    }
  }
}

provider "aws" {
  
  region                      = "eu-west-1"
  access_key                  = "fake"
  secret_key                  = "fake"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {

    ec2             = "http://localhost:4566"
    route53         = "http://localhost:4566"
    route53resolver = "http://localhost:4566"
    s3              = "http://sr.localhost.localstack.cloud:4566"
    s3control       = "http://localhost:4566"
    iam             = "http://localhost:4566"
  }

  default_tags {

    tags = {

      Enviroment = "Local"
      Service    = "LocalStack"
    }
  }

}