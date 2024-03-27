module "docdb" {
  source               = "./vendor/modules/docdb"
  ENV                  = var.ENV
  DOCDB_INSTANCE_TYPE  = var.DOCDB_INSTANCE_TYPE 
  DOCDB_INSTANCE_COUNT = var.DOCDB_INSTANCE_COUNT
}

module "redis" {
  source               = "./vendor/modules/redis"
  ENV                  = var.ENV
}

module "mysql" {
  source               = "./vendor/modules/mysql"
  ENV                  = var.ENV
  MYSQL_STORAGE        = var.MYSQL_STORAGE
  MYSQL_ENGINE_VERSION = var.MYSQL_ENGINE_VERSION 
  MYSQL_INSTANCE_TYPE  = var.MYSQL_INSTANCE_TYPE
}



# We cannot parametrize anything that's added in the source
# To limit that, we can use a tool called as Terrafile. All it does is, it clones the remote code fro the specified branch and make it locally available,


