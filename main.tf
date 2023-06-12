resource "aws_ssm_parameter" "param" {
  count = length(var.params)
  name  = var.params[count.index].name
  type  = var.params[count.index].value
  value = var.params[count.index].type
}

variable "params" {
  default = [
    { name = "demo1", value = "demo1", type = "string"},
    { name = "demo2", value = "demo2", type = "string"}
  ]
}