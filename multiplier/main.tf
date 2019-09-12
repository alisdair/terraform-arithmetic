module "multiply" {
  source = "../modules/product"
  a = 23
  b = 12
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
