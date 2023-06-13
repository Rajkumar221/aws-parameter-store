resource "aws_ssm_parameter" "param" {
  count = length(var.params)
  name  = var.params[count.index].name
  type  = var.params[count.index].type
  value = var.params[count.index].value
}

variable "params" {
  default = [
    { name = "roboshop.dev.frontend.catalogue_url", value = "http://catalogue-dev.devops73.online:8080/", type = "String" },
    { name = "roboshop.dev.frontend.user_url", value = "http://user-dev.devops73.online:8080/", type = "String" },
    { name = "roboshop.dev.frontend.cart_url", value = "http://cart-dev.devops73.online:8080/", type = "String" },
    { name = "roboshop.dev.frontend.shipping_url", value = "http://shipping-dev.devops73.online:8080/", type = "String" },
    { name = "roboshop.dev.cart.redis_host", value = "redis-{{env}}.devops73.online", type = "String" },
    { name = "roboshop.dev.cart.cataloguea_host", value = "catalogue-{{env}}.devops73.online", type = "String" },
    { name = "roboshop.dev.cart.catalogue_port", value = "8080", type = "String" },
    { name = "roboshop.dev.catalogue.mongo", value = "true", type = "String" },
    { name = "roboshop.dev.catalogue.mongo_url", value = "mongodb://mongodb-dev.devops73.online:27017/catalogue", type = "String" },
    { name = "roboshop.dev.payment.cart_host", value = "cart-dev.devops73.online", type = "String" },
    { name = "roboshop.dev.payment.cart_port", value = "8080", type = "String" },
    { name = "roboshop.dev.payment.user_host", value = "user-dev.devops73.online", type = "String" },
    { name = "roboshop.dev.payment.user_port", value = "8080", type = "String" },
    { name = "roboshop.dev.payment.amqp_host", value = "rabbitmq-dev.devops73.online", type = "String" },
    { name = "roboshop.dev.payment.amqp_user", value = "roboshop", type = "String" },
    #passwords never will be part of git repos, usually in organiazations we create them manually.
    #meaning who ever have access they will provision these secrets in parameter store.
    { name = "roboshop.dev.payment.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.shipping.cart_endpoint", value = "cart-dev.devops73.online:8080", type = "String" },
    { name = "roboshop.dev.shipping.db_host", value = "mysql-dev.devops73.online", type = "String" },
    { name = "roboshop.dev.user.mongo", value = "true", type = "String" },
    { name = "roboshop.dev.user.redis_host", value = "redis-dev.devops73.online", type = "String" },
    { name = "roboshop.dev.user.mongo_url", value = "smongodb://mongodb-dev.devops73.online:27017/user", type = "String" },

  ]
}
