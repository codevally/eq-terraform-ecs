variable "env" {
  description = "The environment you wish to use"
}

variable "aws_secret_key" {
  description = "Amazon Web Service Secret Key"
}

variable "aws_access_key" {
  description = "Amazon Web Service Access Key"
}

variable "availability_zones" {
  type        = "list"
  description = "The availability zones"
  default     = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
}

variable "ecs_instance_type" {
  description = "ECS Instance Type"
  default     = "t2.nano"
}

variable "ecs_aws_key_pair" {
  description = "Amazon Web Service Key Pair for use by ecs - in production this value should be empty"
  default     = ""
}

variable "ecs_cluster_min_size" {
  description = "ECS Cluster Minimum number of instances"
  default     = "1"
}

variable "ecs_cluster_max_size" {
  description = "ECS Cluster Maximum number of instances"
  default     = "3"
}

variable "ecs_cluster_desired_size" {
  description = "ECS Cluster Desired number of instances"
  default     = "1"
}

variable "vpc_id" {
  description = "The survey runner VPC ID"
}

variable "public_subnet_ids" {
  type = "list"
  description = "The IDs of the public subnets for the external ELBs"
}

variable "vpc_peer_cidr_block" {
  description = "The CIDR block of the peered VPC, optional"
  default     = "0.0.0.0/0"
}

variable "ecs_application_cidrs" {
  type        = "list"
  description = "CIDR blocks for ecs application subnets"
}

variable "private_route_table_ids" {
  type = "list"
  description = "Route tables with route to NAT gateway"
}

# DNS
variable "dns_zone_id" {
  description = "Amazon Route53 DNS zone identifier"
  default     = "Z2XIERRF1SJEYP"
}

variable "dns_zone_name" {
  description = "Amazon Route53 DNS zone name"
  default     = "eq.ons.digital."
}

variable "certificate_arn" {
  description = "ARN of the IAM loaded TLS certificate for public ELB"
}

# Survey Launcher
variable "survey_launcher_tag" {
  description = "The tag for the Survey Launcher image to run"
  default = "latest"
}

variable "s3_secrets_bucket" {
  description = "The S3 bucket that contains the secrets"
}

variable "jwt_encryption_key_path" {
  description = "Path to the JWT Encryption Key (PEM format)"
}

variable "jwt_signing_key_path" {
  description = "Path to the JWT Signing Key (PEM format)"
}

variable "survey_runner_url" {
  description = "The base URL of Survey Runner to redirect to"
}