variable "project_id" {
  description = "Google Cloud Project to deploy module resources. (This is typically the 'ops' project.)"
  type        = string
}

variable "region" {
  type        = string
  default     = "europe-west1"
  description = "Google Cloud Region"
}

variable "repo_owner" {
  description = "Repo Owner (GoogleCloudPlatform)"
  type        = string
}

variable "repo_name" {
  description = "Repo Name (emblem)"
  type        = string
}

variable "content_api_url" {
  type        = string
  description = "A URL pointing to the Content API deployment (staging *or* prod) to test against."
}
