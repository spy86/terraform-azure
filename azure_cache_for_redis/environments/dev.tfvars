###################################################################
### COMMON 
###################################################################
environment = "dev"
tag_environment = "dev"
resource_owner = "Test organization"
region = "weu"
###################################################################
### RESOURCE GROUP
###################################################################
resource_group_location = "West Europe"
resource_group_name     = "weu-test-rg"
###################################################################
### REDIS
###################################################################
redis_cache_tier = "Standard"
redis_cache_name = "testrediscache"
redis_cache_capacity = "2"
redis_cache_family = "C"
redis_cache_enable_non_ssl_port = "false"
redis_cache_minimum_tls_version = "1.2"
redis_cache_maxmemory_reserved = "10"
redis_cache_maxmemory_delta = "2"
redis_cache_maxmemory_policy = "allkeys-lru"