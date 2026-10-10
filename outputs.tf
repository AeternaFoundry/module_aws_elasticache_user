output "elasticache_users_id" {
  description = "Map of id values across all elasticache_users, keyed the same as var.elasticache_users"
  value       = { for k, v in aws_elasticache_user.elasticache_users : k => v.id if v.id != null && length(v.id) > 0 }
}
output "elasticache_users_access_string" {
  description = "Map of access_string values across all elasticache_users, keyed the same as var.elasticache_users"
  value       = { for k, v in aws_elasticache_user.elasticache_users : k => v.access_string if v.access_string != null && length(v.access_string) > 0 }
}
output "elasticache_users_arn" {
  description = "Map of arn values across all elasticache_users, keyed the same as var.elasticache_users"
  value       = { for k, v in aws_elasticache_user.elasticache_users : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "elasticache_users_authentication_mode" {
  description = "Map of authentication_mode values across all elasticache_users, keyed the same as var.elasticache_users"
  value       = { for k, v in aws_elasticache_user.elasticache_users : k => one(v.authentication_mode) if v.authentication_mode != null && length(v.authentication_mode) > 0 }
  sensitive   = true
}
output "elasticache_users_engine" {
  description = "Map of engine values across all elasticache_users, keyed the same as var.elasticache_users"
  value       = { for k, v in aws_elasticache_user.elasticache_users : k => v.engine if v.engine != null && length(v.engine) > 0 }
}
output "elasticache_users_no_password_required" {
  description = "Map of no_password_required values across all elasticache_users, keyed the same as var.elasticache_users"
  value       = { for k, v in aws_elasticache_user.elasticache_users : k => v.no_password_required if v.no_password_required != null }
}
output "elasticache_users_passwords" {
  description = "Map of passwords values across all elasticache_users, keyed the same as var.elasticache_users"
  value       = { for k, v in aws_elasticache_user.elasticache_users : k => v.passwords if v.passwords != null && length(v.passwords) > 0 }
  sensitive   = true
}
output "elasticache_users_passwords_wo" {
  description = "Map of passwords_wo values across all elasticache_users, keyed the same as var.elasticache_users"
  value       = { for k, v in aws_elasticache_user.elasticache_users : k => v.passwords_wo if v.passwords_wo != null && length(v.passwords_wo) > 0 }
  sensitive   = true
}
output "elasticache_users_passwords_wo_version" {
  description = "Map of passwords_wo_version values across all elasticache_users, keyed the same as var.elasticache_users"
  value       = { for k, v in aws_elasticache_user.elasticache_users : k => v.passwords_wo_version if v.passwords_wo_version != null }
}
output "elasticache_users_region" {
  description = "Map of region values across all elasticache_users, keyed the same as var.elasticache_users"
  value       = { for k, v in aws_elasticache_user.elasticache_users : k => v.region if v.region != null && length(v.region) > 0 }
}
output "elasticache_users_tags" {
  description = "Map of tags values across all elasticache_users, keyed the same as var.elasticache_users"
  value       = { for k, v in aws_elasticache_user.elasticache_users : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "elasticache_users_tags_all" {
  description = "Map of tags_all values across all elasticache_users, keyed the same as var.elasticache_users"
  value       = { for k, v in aws_elasticache_user.elasticache_users : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "elasticache_users_user_id" {
  description = "Map of user_id values across all elasticache_users, keyed the same as var.elasticache_users"
  value       = { for k, v in aws_elasticache_user.elasticache_users : k => v.user_id if v.user_id != null && length(v.user_id) > 0 }
}
output "elasticache_users_user_name" {
  description = "Map of user_name values across all elasticache_users, keyed the same as var.elasticache_users"
  value       = { for k, v in aws_elasticache_user.elasticache_users : k => v.user_name if v.user_name != null && length(v.user_name) > 0 }
}

