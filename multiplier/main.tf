module "multiply" {
  source = "../modules/product"
  a = 35
  b = 99
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
