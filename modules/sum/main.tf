variable "a" {
  type = number
  default = 1
}

variable "b" {
  type = number
  default = 1
}

output "result" {
  value = var.a + var.b
}
