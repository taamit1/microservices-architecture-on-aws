variable "default_tags" {
  type        = map(string)
  description = "Map of default tags to apply to resources"
  default = {
    project = "learning-live-with-aws-hashicorp"
  }
}

variable "region" {
  type        = string
  description = "The region to deploy resources to"
  default     = "us-east-1"
}

# VPC Variables
variable "vpc_cidr" {
  type        = string
  description = "CIDR block for VPC"
  default     = "10.255.0.0/20"
}

variable "public_subnet_count" {
  type        = number
  description = "Number of public subnets to create"
  default     = 2
}

variable "private_subnet_count" {
  type        = number
  description = "Number of private subnets to create"
  default     = 2
}

variable "database_private_ip" {
  type        = string
  description = "Private ip address of database"
}

variable "ec2_key_pair" {
  type        = string
  description = "EC2 key pair"
}

variable "database_service_name" {
  type        = string
  description = "Database service name"
  default     = "database"
}

variable "database_message" {
  type        = string
  description = "Database message"
  default     = "Hello from the database"
}

variable "consul_server_count" {
  type        = number
  description = "The number of Consul Servers to create"
  default     = 3
}

variable "consul_server_allowed_cidr_blocks" {
  type = list(string)
  description = "List of valid IPv4 CIDR blocks that can access the consul servers from the public internet."
  default     = ["0.0.0.0/0"]
}

variable "consul_server_allowed_cidr_blocks_ipv6" {
  type        = list(string)
  description = "List of valid IPv6 CIDR blocks that can access the consul servers from the public internet."
  default     = ["::/0"]
}