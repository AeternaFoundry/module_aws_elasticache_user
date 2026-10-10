variable "elasticache_users" {
  description = <<EOT
Map of elasticache_users, attributes below
Required:
    - access_string
    - engine
    - user_id
    - user_name
Optional:
    - no_password_required
    - passwords
    - passwords_wo
    - passwords_wo_version
    - region
    - tags
    - tags_all
    - authentication_mode (block):
        - passwords (optional)
        - type (required)
EOT

  type = map(object({
    access_string        = string
    engine               = string
    user_id              = string
    user_name            = string
    no_password_required = optional(bool)
    passwords            = optional(set(string))
    passwords_wo         = optional(string)
    passwords_wo_version = optional(number)
    region               = optional(string)
    tags                 = optional(map(string))
    tags_all             = optional(map(string))
    authentication_mode = optional(object({
      passwords = optional(set(string))
      type      = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.elasticache_users : (
        v.passwords == null || (alltrue([for x in v.passwords : length(x) >= 16 && length(x) <= 128]))
      )
    ])
    error_message = "must be between 16 and 128 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.elasticache_users : (
        v.passwords_wo == null || (length(v.passwords_wo) >= 16 && length(v.passwords_wo) <= 128)
      )
    ])
    error_message = "must be between 16 and 128 characters"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

