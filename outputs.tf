output "comprehend_entity_recognizers_id" {
  description = "Map of id values across all comprehend_entity_recognizers, keyed the same as var.comprehend_entity_recognizers"
  value       = { for k, v in aws_comprehend_entity_recognizer.comprehend_entity_recognizers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "comprehend_entity_recognizers_arn" {
  description = "Map of arn values across all comprehend_entity_recognizers, keyed the same as var.comprehend_entity_recognizers"
  value       = { for k, v in aws_comprehend_entity_recognizer.comprehend_entity_recognizers : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "comprehend_entity_recognizers_data_access_role_arn" {
  description = "Map of data_access_role_arn values across all comprehend_entity_recognizers, keyed the same as var.comprehend_entity_recognizers"
  value       = { for k, v in aws_comprehend_entity_recognizer.comprehend_entity_recognizers : k => v.data_access_role_arn if v.data_access_role_arn != null && length(v.data_access_role_arn) > 0 }
}
output "comprehend_entity_recognizers_input_data_config" {
  description = "Map of input_data_config values across all comprehend_entity_recognizers, keyed the same as var.comprehend_entity_recognizers"
  value       = { for k, v in aws_comprehend_entity_recognizer.comprehend_entity_recognizers : k => one(v.input_data_config) if v.input_data_config != null && length(v.input_data_config) > 0 }
}
output "comprehend_entity_recognizers_language_code" {
  description = "Map of language_code values across all comprehend_entity_recognizers, keyed the same as var.comprehend_entity_recognizers"
  value       = { for k, v in aws_comprehend_entity_recognizer.comprehend_entity_recognizers : k => v.language_code if v.language_code != null && length(v.language_code) > 0 }
}
output "comprehend_entity_recognizers_model_kms_key_id" {
  description = "Map of model_kms_key_id values across all comprehend_entity_recognizers, keyed the same as var.comprehend_entity_recognizers"
  value       = { for k, v in aws_comprehend_entity_recognizer.comprehend_entity_recognizers : k => v.model_kms_key_id if v.model_kms_key_id != null && length(v.model_kms_key_id) > 0 }
}
output "comprehend_entity_recognizers_name" {
  description = "Map of name values across all comprehend_entity_recognizers, keyed the same as var.comprehend_entity_recognizers"
  value       = { for k, v in aws_comprehend_entity_recognizer.comprehend_entity_recognizers : k => v.name if v.name != null && length(v.name) > 0 }
}
output "comprehend_entity_recognizers_region" {
  description = "Map of region values across all comprehend_entity_recognizers, keyed the same as var.comprehend_entity_recognizers"
  value       = { for k, v in aws_comprehend_entity_recognizer.comprehend_entity_recognizers : k => v.region if v.region != null && length(v.region) > 0 }
}
output "comprehend_entity_recognizers_tags" {
  description = "Map of tags values across all comprehend_entity_recognizers, keyed the same as var.comprehend_entity_recognizers"
  value       = { for k, v in aws_comprehend_entity_recognizer.comprehend_entity_recognizers : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "comprehend_entity_recognizers_tags_all" {
  description = "Map of tags_all values across all comprehend_entity_recognizers, keyed the same as var.comprehend_entity_recognizers"
  value       = { for k, v in aws_comprehend_entity_recognizer.comprehend_entity_recognizers : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "comprehend_entity_recognizers_version_name" {
  description = "Map of version_name values across all comprehend_entity_recognizers, keyed the same as var.comprehend_entity_recognizers"
  value       = { for k, v in aws_comprehend_entity_recognizer.comprehend_entity_recognizers : k => v.version_name if v.version_name != null && length(v.version_name) > 0 }
}
output "comprehend_entity_recognizers_version_name_prefix" {
  description = "Map of version_name_prefix values across all comprehend_entity_recognizers, keyed the same as var.comprehend_entity_recognizers"
  value       = { for k, v in aws_comprehend_entity_recognizer.comprehend_entity_recognizers : k => v.version_name_prefix if v.version_name_prefix != null && length(v.version_name_prefix) > 0 }
}
output "comprehend_entity_recognizers_volume_kms_key_id" {
  description = "Map of volume_kms_key_id values across all comprehend_entity_recognizers, keyed the same as var.comprehend_entity_recognizers"
  value       = { for k, v in aws_comprehend_entity_recognizer.comprehend_entity_recognizers : k => v.volume_kms_key_id if v.volume_kms_key_id != null && length(v.volume_kms_key_id) > 0 }
}
output "comprehend_entity_recognizers_vpc_config" {
  description = "Map of vpc_config values across all comprehend_entity_recognizers, keyed the same as var.comprehend_entity_recognizers"
  value       = { for k, v in aws_comprehend_entity_recognizer.comprehend_entity_recognizers : k => one(v.vpc_config) if v.vpc_config != null && length(v.vpc_config) > 0 }
}

