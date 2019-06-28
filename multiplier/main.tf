module "multiply" {
  source = "../modules/product"
  a = 99
  b = 35
}

locals {
  total = "${module.multiply.result}"
}

output "total" {
  value = "${local.total}"
}

resource "null_resource" "result" {
  triggers = {
    total = "${local.total}"
  }
}
