variable "cloud_provider" {
  type        = string
  description = "Cloud provider where cluster will be running"
  validation {
    condition     = can(regex("^(aws|gcp)$", var.cloud_provider))
    error_message = "Provider must be aws or gcp"
  }
}

variable "name" {
  type        = string
  description = "Cluster name"
  validation {
    condition     = length(var.name) > 64 ? false : true
    error_message = "Cluster name must be lower that 64 char"
  }
}

variable "region" {
  type        = string
  description = "Running custer region"
}

variable "tier" {
  type        = string
  description = "Cluster tier"
  validation {
    condition     = can(regex("^(development|production)$", var.tier))
    error_message = "Cluster tier must be development or production"
  }
}

variable "password" {
  type        = string
  description = "Cluster password"
}

variable "double_sha1_password_hash" {
  type        = string
  description = "MySQL connection style password"
  default     = null
}

variable "idle_scaling" {
  type    = bool
  default = null
}

variable "idle_timeout_minutes" {
  type    = number
  default = null
}

variable "max_total_memory_gb" {
  type    = number
  default = null
}

variable "min_total_memory_gb" {
  type    = number
  default = null
}

variable "password_hash" {
  type    = string
  default = null
}

variable "ip_access" {
  type = list(string)
}