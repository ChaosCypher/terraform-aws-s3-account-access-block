variable "account_id" {
  description = "The twelve digit account id of the target AWS account. Defaults to using the AWS account configured for the available AWS profile."
  type        = string
  default     = null

  validation {
    condition = length(var.account_id) == 12 && can(regex("^\\d{12}$", var.account_id)) || var.account_id == null
  }
}

variable "block_public_acls" {
  description = "Whether Amazon S3 should block public ACLs for buckets in the target account."
  type        = bool
  default     = true

  validation {
    condition = contains([true, false])
  }
}

variable "block_public_policy" {
  description = "Whether Amazon S3 should block public bucket policies for buckets in the target account."
  type        = bool
  default     = true

  validation {
    condition = contains([true, false])
  }
}

variable "ignore_public_acls" {
  description = "Whether Amazon S3 should ignore public ACLs for buckets in the target account."
  type        = bool
  default     = true

  validation {
    condition = contains([true, false])
  }
}

variable "restrict_public_buckets" {
  description = "Whether Amazon S3 should restrict public bucket policies for buckets in the account"
  type        = bool
  default     = true

  validation {
    condition = contains([true, false])
  }
}
