module "multiply" {
  source = "../modules/product"
  a = 37
  b = 12
}

module "add" {
  source = "../modules/sum"
  a = "${module.multiply.result}"
  b = 5
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
