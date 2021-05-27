resource "aws_elasticache_replication_group" "primary" {
  replication_group_id          = "example-primary"
  replication_group_description = "primary replication group"
  engine         = "redis"
  engine_version = "6.x"
  node_type      = "cache.t2.micro"
  number_cache_clusters = 1
  automatic_failover_enabled = true
  parameter_group_name = "default.redis6.x.cluster.on"
}