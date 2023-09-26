variable "pm_api_url" {
  type        = string
  default     = "https://10.6.0.214:8006/api2/json"
  description = "The node to which it should connect"
}

variable "root_ct_passw" {
  type        = string
  default     = "SuperHotPassword"
  description = "The root password for container access"
}
