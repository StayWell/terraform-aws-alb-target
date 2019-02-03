variable "vpc_id" {
  description = "(required) https://www.terraform.io/docs/providers/aws/r/lb_target_group.html#vpc_id"
  default     = ""
}

variable "listener_arn" {
  description = "(required) Listener to which the rule will attach"
  default     = ""
}

variable "lb_dns_name" {
  description = "(required) https://www.terraform.io/docs/providers/aws/r/route53_record.html#name-1"
  default     = ""
}

variable "lb_zone_id" {
  description = "(required) https://www.terraform.io/docs/providers/aws/r/route53_record.html#zone_id-1"
  default     = ""
}

variable "host" {
  description = "(required) Host to be used for Route53 record and host based listener rule"
  default     = ""
}

variable "domain" {
  description = "(required) Domain used for Route53 entry"
  default     = ""
}

variable "route53_zone_id" {
  description = "(required) Route53 hosted zone used for DNS"
  default     = ""
}

variable "port" {
  description = "(optional) https://www.terraform.io/docs/providers/aws/r/lb_target_group.html#port"
  default     = ""
}

variable "health_check_path" {
  description = "(optional) https://www.terraform.io/docs/providers/aws/r/lb_target_group.html#path"
  default     = "/"
}

variable "target_type" {
  description = "(optional) https://www.terraform.io/docs/providers/aws/r/lb_target_group.html#target_type"
  default     = "instance"
}

variable "env" {
  description = "(optional) Unique identifier used to name all resources"
  default     = "default"
}

variable "tags" {
  description = "(optional) Additional tags applied to all resources"
  default     = {}
}
