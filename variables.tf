
variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "My instance"
}

variable "cidr_vpc" {
  description = "CIDR block for the VPC"
  default     = "10.1.0.0/16"
}

variable "cidr_subnet" {
  description = "CIDR block for the subnet"
  default     = "10.1.0.0/24"
}

variable "cidr_subnet2" {
  description = "CIDR block for the subnet"
  default     = "10.1.128.0/24"
}

variable "environment_tag" {
  description = "Environment tag"
  default     = "Learn"
}

variable "private_key_path" {
    description = "ssh private key path"
    default     = "~/.ssh/id_rsa"
}

variable "public_key_path" {
    description = "ssh public key path"
    default     = "~/.ssh/id_rsa.pub"
}

variable "region" {
  description   = "The region Terraform deploys your instance"
  default       = "eu-west-2"
}

variable "db_username" {
    description = "DB username"
    default     = "ubuntu"
}

variable "db_name" {
    description = "DB name"
    default     = "mlflow_db"
}

variable "db_port" {
    description = "DB port"
    default     = 5432
}

variable "db_password" {
    description = "DB password"
    default     = "password"
}

