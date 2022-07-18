# ---------------------------------------------------------------------------
# Amazon Cloudfront datasources
# ---------------------------------------------------------------------------

data "aws_cloudfront_cache_policy" "disabled" {
  name = "Managed-CachingDisabled"
}