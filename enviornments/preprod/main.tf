module "rg" {
    source = "../../enviornments/modules"
    rgs = var.rgs
}

module "stg" {
    depends_on = [module.rg]
    source = "../../enviornments/modules"
    stg = var.stg
}