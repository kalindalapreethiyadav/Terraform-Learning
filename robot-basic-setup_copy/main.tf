module "frontend" {
    for_each     = var.ALL_COMPONENTS
    source       = "./ec2"
    COMPONENT    = each.key
    app_version  = each.value.app_version
}