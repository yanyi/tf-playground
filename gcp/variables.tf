variable "gcp_credentials_file" {}

variable "gcp_project_id" {
  description = "Google Cloud Platform Project ID"
}

variable "gcp_region" {
  description = "Region of the Compute Engine"
  default     = "us-west1"
}

variable "gcp_zone" {
  description = "Zone of the Compute Engine"
  default     = "us-west1-a"
}

variable "gcp_default_service_account_email" {
  description = "Email address of the default service account"
}
