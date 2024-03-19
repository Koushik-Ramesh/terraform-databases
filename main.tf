module "docdb" {
  source               = "./vendor/modules/docdb"
  ENV                  = var.ENV
}

module "redis" {
  source               = "./vendor/modules/redis"
  ENV                  = var.ENV
}



# We cannot parametrize anything that's added in the source
# To limit that, we can use a tool called as Terrafile. All it does is, it clones the remote code fro the specified branch and make it locally available,


