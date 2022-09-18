variable "ALL_COMPONENTS" {
    default = {
       mongodb = {
        app_version = "null"
       },
       catalogue = {
        app_version = "0.0.9"
       },
       redis = {
        app_version = "null"
       },
       user = {
        app_version = "0.0.9"
       },
       cart = {
        app_version = "0.0.9"
       },
       mysql = {
        app_version = "null"
       },
       shipping = {
        app_version = "0.0.9"
       },
       rabbitmq = {
        app_version = "null"
       },
       payment = {
        app_version = "0.0.9"
       },
       frontend = {
        app_version = "0.0.9"
       }
    }
}