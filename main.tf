resource "aws_comprehend_entity_recognizer" "comprehend_entity_recognizers" {
  for_each = var.comprehend_entity_recognizers

  data_access_role_arn = each.value.data_access_role_arn
  language_code        = each.value.language_code
  name                 = each.value.name
  model_kms_key_id     = each.value.model_kms_key_id
  region               = each.value.region
  tags                 = each.value.tags
  tags_all             = each.value.tags_all
  version_name         = each.value.version_name
  version_name_prefix  = each.value.version_name_prefix
  volume_kms_key_id    = each.value.volume_kms_key_id

  input_data_config {
    dynamic "annotations" {
      for_each = each.value.input_data_config.annotations != null ? [each.value.input_data_config.annotations] : []
      content {
        s3_uri      = annotations.value.s3_uri
        test_s3_uri = annotations.value.test_s3_uri
      }
    }
    dynamic "augmented_manifests" {
      for_each = each.value.input_data_config.augmented_manifests != null ? each.value.input_data_config.augmented_manifests : []
      content {
        annotation_data_s3_uri  = augmented_manifests.value.annotation_data_s3_uri
        attribute_names         = augmented_manifests.value.attribute_names
        document_type           = augmented_manifests.value.document_type
        s3_uri                  = augmented_manifests.value.s3_uri
        source_documents_s3_uri = augmented_manifests.value.source_documents_s3_uri
        split                   = augmented_manifests.value.split
      }
    }
    data_format = each.value.input_data_config.data_format
    dynamic "documents" {
      for_each = each.value.input_data_config.documents != null ? [each.value.input_data_config.documents] : []
      content {
        input_format = documents.value.input_format
        s3_uri       = documents.value.s3_uri
        test_s3_uri  = documents.value.test_s3_uri
      }
    }
    dynamic "entity_list" {
      for_each = each.value.input_data_config.entity_list != null ? [each.value.input_data_config.entity_list] : []
      content {
        s3_uri = entity_list.value.s3_uri
      }
    }
    dynamic "entity_types" {
      for_each = each.value.input_data_config.entity_types
      content {
        type = entity_types.value.type
      }
    }
  }

  dynamic "vpc_config" {
    for_each = each.value.vpc_config != null ? [each.value.vpc_config] : []
    content {
      security_group_ids = vpc_config.value.security_group_ids
      subnets            = vpc_config.value.subnets
    }
  }
}

