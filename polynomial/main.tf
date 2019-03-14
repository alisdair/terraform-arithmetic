module "multiply" {
  source = "../modules/product"
  a = 4
  b = 8
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
