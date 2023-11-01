module "dynamodb" {
  source     = "../dynamodb_module" # Path to your DynamoDB module
  table_name = "test_table"
  hash_key   = "test_id"
  # Set other environment-specific variables if needed.
}
