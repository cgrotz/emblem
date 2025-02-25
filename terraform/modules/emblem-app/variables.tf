variable "project_id" {
  type        = string
  description = "Project ID of project to deploy resources to."
}

variable "environment" {
  type        = string
  description = "Environment name such as 'staging' or 'production'."
}

variable "region" {
  type        = string
  description = "Region to deploy resources to."
  default     = "europe-west1"
}

variable "enable_apis" {
  type        = bool
  description = "Toggle to include required APIs."
  default     = true
}

variable "setup_cd_system" {
  type        = bool
  default     = false
  description = "Create deployment triggers. Enable only if Cloud Build has GitHub repository access."
}

variable "repo_owner" {
  description = "Repo Owner (GoogleCloudPlatform)"
  type        = string
  default     = ""
}

variable "repo_name" {
  description = "Repo Name (emblem)"
  type        = string
  default     = ""
}

variable "deploy_trigger_topic_id" {
  type        = string
  description = "Pub/Sub Topic ID that triggers Cloud Build deployment."
}

variable "gcr_pubsub_format" {
  type        = bool
  default     = true
  description = "True if Cloud Build deploy triggers should expect GCR message format."
}

variable "require_deploy_approval" {
  type        = bool
  default     = false
  description = "The application services require manual approval to be deployed."
}

variable "deploy_session_bucket" {
  type        = bool
  default     = true
  description = "Whether or not to deploy a [fresh] bucket for storing session data"
}

variable "session_bucket_ttl_days" {
  type        = number
  description = "Number of days before session bucket data is deleted."
  default     = 14
}

variable "ops_project_id" {
  type        = string
  description = "Project ID of Emblem ops project."
}

variable "approver_email" {
  type        = string
  description = "Email of initial user to add to Firebase as approver."
  default     = "user@example.com"
}

variable "seed_test_data" {
  type        = bool
  description = "Toggle to seed test data into Firebase."
  default     = false
}
