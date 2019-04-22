module "multiply" {
  source = "../modules/product"
  a = 8
  b = 10
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
