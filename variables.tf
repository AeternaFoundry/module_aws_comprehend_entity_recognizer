variable "comprehend_entity_recognizers" {
  description = <<EOT
Map of comprehend_entity_recognizers, attributes below
Required:
    - data_access_role_arn
    - language_code
    - name
    - input_data_config (block):
        - annotations (optional, block):
            - s3_uri (required)
            - test_s3_uri (optional)
        - augmented_manifests (optional, block):
            - annotation_data_s3_uri (optional)
            - attribute_names (required)
            - document_type (optional)
            - s3_uri (required)
            - source_documents_s3_uri (optional)
            - split (optional)
        - data_format (optional)
        - documents (optional, block):
            - input_format (optional)
            - s3_uri (required)
            - test_s3_uri (optional)
        - entity_list (optional, block):
            - s3_uri (required)
        - entity_types (required, block):
            - type (required)
Optional:
    - model_kms_key_id
    - region
    - tags
    - tags_all
    - version_name
    - version_name_prefix
    - volume_kms_key_id
    - vpc_config (block):
        - security_group_ids (required)
        - subnets (required)
EOT

  type = map(object({
    data_access_role_arn = string
    language_code        = string
    name                 = string
    model_kms_key_id     = optional(string)
    region               = optional(string)
    tags                 = optional(map(string))
    tags_all             = optional(map(string))
    version_name         = optional(string)
    version_name_prefix  = optional(string)
    volume_kms_key_id    = optional(string)
    input_data_config = object({
      annotations = optional(object({
        s3_uri      = string
        test_s3_uri = optional(string)
      }))
      augmented_manifests = optional(list(object({
        annotation_data_s3_uri  = optional(string)
        attribute_names         = list(string)
        document_type           = optional(string)
        s3_uri                  = string
        source_documents_s3_uri = optional(string)
        split                   = optional(string)
      })))
      data_format = optional(string)
      documents = optional(object({
        input_format = optional(string)
        s3_uri       = string
        test_s3_uri  = optional(string)
      }))
      entity_list = optional(object({
        s3_uri = string
      }))
      entity_types = list(object({
        type = string
      }))
    })
    vpc_config = optional(object({
      security_group_ids = set(string)
      subnets            = set(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.comprehend_entity_recognizers : (
        length(v.input_data_config.entity_types) >= 1 && length(v.input_data_config.entity_types) <= 25
      )
    ])
    error_message = "Each entity_types list must contain between 1 and 25 items"
  }
  # Note: 11 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

