# Polynomial

module "multiply" {
  source = "../modules/product"
  a = 33
  b = 26
}

module "add" {
  source = "../modules/sum"
  a = "${module.multiply.result}"
  b = 9
}

locals {
  total = "${module.add.result}"
}

output "total" {
  value = "${local.total}"
}

resource "null_resource" "result" {
  triggers = {
    total = "${local.total}"
  }
}
