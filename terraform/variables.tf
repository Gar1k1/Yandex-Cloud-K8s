variable "service-account" {
  description = "Service account name"
  type        = string
}

variable "yc_access_key" {
  description = "Access key for Yandex Cloud"
  type        = string
}

variable "yc_secret_key" {
  description = "Secret key for Yandex Cloud"
  type        = string
}

variable "network_id" {
  type        = string
  description = "network id"
}

variable "network_name" {
  type        = string
  description = "network name"
}


variable "auto_scale_min" {
  type        = string
  description = "auto scale min"
}

variable "auto_scale_max" {
  type        = string
  description = "auto scale max"
}
variable "auto_scale_initial" {
  type        = string
  description = "auto scale initial"
}
variable "node_labels_role" {
  type        = string
  description = "node labels role"
}

variable "node_labels_env" {
  type        = string
  description = "description"
}

variable "piggymetrics_sa" {
  type = string
}

variable "folder_id" {
  type = string
}

variable "cloud_id" {
  type = string
}
