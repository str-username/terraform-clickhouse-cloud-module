resource "random_password" "this" {
  length  = 26
  special = false
  lifecycle {
    ignore_changes = all
  }
}

resource "clickhouse_service" "this" {
  cloud_provider       = var.cloud_provider
  name                 = var.name
  region               = var.region
  tier                 = var.tier
  idle_scaling         = var.tier == "production" ? var.idle_scaling : null
  idle_timeout_minutes = var.tier == "production" ? var.idle_timeout_minutes : null
  max_total_memory_gb  = var.tier == "production" ? var.max_total_memory_gb : null
  min_total_memory_gb  = var.tier == "production" ? var.min_total_memory_gb : null
  password             = random_password.this.result
  ip_access            = [for ip in var.ip_access : { source = ip }]
}

resource "clickhouse_private_endpoint_registration" "this" {
  cloud_provider = var.cloud_provider
  id = var.name
  region = var.region
  description = "Private endpoint for ${var.name} cluster"
}

resource "aws_secretsmanager_secret" "this" {
  name                    = "clickhouse-cloud/${var.name}"
  recovery_window_in_days = 0
  tags = {
    terraform = true
  }
  depends_on = [clickhouse_service.this]
}

resource "aws_secretsmanager_secret_version" "this" {
  secret_id = aws_secretsmanager_secret.this.id
  secret_string = jsonencode({
    "connection" = clickhouse_service.this.endpoints
    "password"   = random_password.this.result
  })
  depends_on = [clickhouse_service.this]
}