module "rg" {
    source = "../../modules/resource group"
    rgs = var.rgs
}

module "stg" {
    depends_on = [module.rg]
    source = "../../modules/storage account"
    stg = var.stg
    
}