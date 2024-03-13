variable "hcloud_token" {
  type        = string
  description = "Hetzner Cloud API token"
  sensitive   = true
  default     = "<API_TOKEN>"
}

variable "location_list" {
  type        = list(string)
  description = "List of locations to cycle through"
  default     = ["fsn1", "nbg1", "hel1"]
}


variable "instances_minio_lb" {
  type        = string
  description = "Number of instances to create"
  default     = "1"
}


variable "instances_minio" {
  type        = string
  description = "Number of instances to create"
  default     = "1"
}

variable "server_type_minio" {
  type        = string
  description = "Server type to use for minio"
  default     = "cx31"
}

variable "os_type" {
  type        = string
  description = "OS image to use for the server"
  default     = "ubuntu-22.04"
}

variable "disk_size" {
  type        = string
  description = "Disk size to use for the minio server"
  default     = "100"
}

variable "volumes_per_node" {
  type        = string
  description = "Load balancer port"
  default     = "1"
}

variable "public_net" {
  type        = bool
  description = "Public network enabled or desabled for all servers besides master_node and minio"
  default     = true
}
