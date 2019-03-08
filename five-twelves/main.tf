module "multiply" {
  source = "../modules/product"
  a = 5
  b = 12
}

output "total" {
  value = "${module.multiply.result}"
}
