module "multiply" {
  source = "../modules/product"
  a = 4
  b = 8
}

module "add" {
  source = "../modules/sum"
  a = module.multiply.result
  b = 5
}

output "total" {
  value = module.add.result
}
