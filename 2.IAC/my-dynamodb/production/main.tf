module "dynamodb" {
  source     = "../dynamodb_module" # Path to your DynamoDB module
  table_name = "prod_table"
  hash_key   = "prod_id"
  # Set other environment-specific variables if needed.
}
