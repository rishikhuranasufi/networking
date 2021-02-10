terraform {
  backend "gcs" {
    bucket = "backend-bucket-techno-trainer"   # GCS bucket name to store terraform tfstate
    prefix = "first-app-techno-trainer"  # Update to desired prefix name. Prefix name should be unique for each Terraform project having the same remote state bucket.    
    }
}

