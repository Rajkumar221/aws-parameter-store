resource "aws_ssm_parameter" "param" {
  count = length(var.params)
  name  = var.params[count.index].name
  type  = var.params[count.index].type
  value = var.params[count.index].value
  overwrite = true
  key_id = "fc35bd1a-8b4c-4de9-8ede-46245c67d932"
}

variable "params" {
  default = [
    { name = "roboshop.dev.frontend.catalogue_url", value = "http://catalogue-dev.devops73.online/", type = "String" },
    { name = "roboshop.dev.frontend.user_url", value = "http://user-dev.devops73.online/", type = "String" },
    { name = "roboshop.dev.frontend.cart_url", value = "http://cart-dev.devops73.online/", type = "String" },
    { name = "roboshop.dev.frontend.shipping_url", value = "http://shipping-dev.devops73.online/", type = "String" },
    { name = "roboshop.dev.frontend.payment_url", value = "http://payment-dev.devopsb73.online/", type = "String" },
    
    { name = "roboshop.dev.cart.redis_host", value = "redis-dev.devops73.online", type = "String" },
    { name = "roboshop.dev.cart.cataloguea_host", value = "catalogue-dev.devops73.online", type = "String" },
    { name = "roboshop.dev.cart.catalogue_port", value = "80", type = "String" },

    { name = "roboshop.dev.catalogue.mongo", value = "true", type = "String" },
    # { name = "roboshop.dev.catalogue.mongo_url", value = "mongodb://mongodb-dev.devops73.online:27017/catalogue", type = "String" },

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

    { name = "roboshop.dev.rabbitmq.amqp_user", value = "roboshop", type = "String" },
    { name = "roboshop.dev.rabbitmq.amqp_pass", value = "roboshop123", type = "String" },

    { name = "roboshop.dev.mysql.username", value = "roboshop", type = "String" },
    { name = "roboshop.dev.mysql.password", value = "roboshop123", type = "String" },

    { name = "roboshop.dev.docdb.username", value = "roboshop", type = "String" },
    { name = "roboshop.dev.docdb.password", value = "roboshop123", type = "String" },
    
    { name = "roboshop.dev.catalogue.mongo_url", value = "mongodb://roboshop:roboshop123@docdb-dev.cluster-cbvsbeoyxek4.us-east-1.docdb.amazonaws.com:27017/catalogue?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "SecureString" },
    { name = "roboshop.dev.catalogue.docdb_endpoint", value = "docdb-dev.cluster-cbvsbeoyxek4.us-east-1.docdb.amazonaws.com", type = "String" },
    { name = "roboshop.dev.user.mongo_url", value = "mongodb://roboshop:roboshop123@docdb-dev.cluster-cbvsbeoyxek4.us-east-1.docdb.amazonaws.com:27017/users?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "SecureString" },
    { name = "roboshop.dev.user.docdb_endpoint", value = "docdb-dev.cluster-cbvsbeoyxek4.us-east-1.docdb.amazonaws.com", type = "String" },



  #prod
  { name = "roboshop.prod.frontend.catalogue_url", value = "http://catalogue-dev.devops73.online/", type = "String" },
    { name = "roboshop.prod.frontend.user_url", value = "http://user-dev.devops73.online/", type = "String" },
    { name = "roboshop.prod.frontend.cart_url", value = "http://cart-dev.devops73.online/", type = "String" },
    { name = "roboshop.prod.frontend.shipping_url", value = "http://shipping-dev.devops73.online/", type = "String" },
    { name = "roboshop.prod.frontend.payment_url", value = "http://payment-dev.devopsb73.online/", type = "String" },
    
    { name = "roboshop.prod.cart.redis_host", value = "redis-dev.devops73.online", type = "String" },
    { name = "roboshop.prod.cart.cataloguea_host", value = "catalogue-dev.devops73.online", type = "String" },
    { name = "roboshop.prod.cart.catalogue_port", value = "80", type = "String" },

    { name = "roboshop.prod.catalogue.mongo", value = "true", type = "String" },
    # { name = "roboshop.dev.catalogue.mongo_url", value = "mongodb://mongodb-dev.devops73.online:27017/catalogue", type = "String" },

    { name = "roboshop.prod.payment.cart_host", value = "cart-dev.devops73.online", type = "String" },
    { name = "roboshop.prod.payment.cart_port", value = "8080", type = "String" },
    { name = "roboshop.prod.payment.user_host", value = "user-dev.devops73.online", type = "String" },
    { name = "roboshop.prod.payment.user_port", value = "8080", type = "String" },
    { name = "roboshop.prod.payment.amqp_host", value = "rabbitmq-dev.devops73.online", type = "String" },
    { name = "roboshop.prod.payment.amqp_user", value = "roboshop", type = "String" },
    #passwords never will be part of git repos, usually in organiazations we create them manually.
    #meaning who ever have access they will provision these secrets in parameter store.
    { name = "roboshop.prod.payment.amqp_pass", value = "roboshop123", type = "SecureString" },
    

    { name = "roboshop.prod.shipping.cart_endpoint", value = "cart-dev.devops73.online:8080", type = "String" },
    { name = "roboshop.prod.shipping.db_host", value = "mysql-dev.devops73.online", type = "String" },

    { name = "roboshop.prod.user.mongo", value = "true", type = "String" },
    { name = "roboshop.prod.user.redis_host", value = "redis-dev.devops73.online", type = "String" },
    { name = "roboshop.prod.user.mongo_url", value = "smongodb://mongodb-dev.devops73.online:27017/user", type = "String" },

    { name = "roboshop.prod.rabbitmq.amqp_user", value = "roboshop", type = "String" },
    { name = "roboshop.prod.rabbitmq.amqp_pass", value = "roboshop123", type = "String" },

    { name = "roboshop.prod.mysql.username", value = "roboshop", type = "String" },
    { name = "roboshop.prod.mysql.password", value = "roboshop123", type = "String" },

    { name = "roboshop.prod.docdb.username", value = "roboshop", type = "String" },
    { name = "roboshop.prod.docdb.password", value = "roboshop123", type = "String" },
    
    { name = "roboshop.prod.catalogue.mongo_url", value = "mongodb://roboshop:roboshop123@docdb-dev.cluster-cbvsbeoyxek4.us-east-1.docdb.amazonaws.com:27017/catalogue?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "SecureString" },
    { name = "roboshop.prod.catalogue.docdb_endpoint", value = "docdb-dev.cluster-cbvsbeoyxek4.us-east-1.docdb.amazonaws.com", type = "String" },
    { name = "roboshop.prod.user.mongo_url", value = "mongodb://roboshop:roboshop123@docdb-dev.cluster-cbvsbeoyxek4.us-east-1.docdb.amazonaws.com:27017/users?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "SecureString" },
    { name = "roboshop.prod.user.docdb_endpoint", value = "docdb-dev.cluster-cbvsbeoyxek4.us-east-1.docdb.amazonaws.com", type = "String" },
  
  
  
  ## Nexus
    { name = "roboshop.nexus.username", value = "admin", type = "SecureString" },
    { name = "roboshop.nexus.password", value = "admin123", type = "SecureString" },
    
  ]
}
