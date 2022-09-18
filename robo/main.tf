module "frontend" {
    source       = "./ec2"
    COMPONENT    = "frontend"
    APP_VERSION  = "0.0.9"
}

module "cart" {
    source       = "./ec2"
    COMPONENT    = "cart"
    APP_VERSION  = "0.0.9"
}