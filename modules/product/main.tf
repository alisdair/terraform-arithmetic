# Multiply two numbers together

variable "a" {
  type = "string"
  default = 1
}

variable "b" {
  type = "string"
  default = 1
}

output "result" {
  value = "${var.a * var.b * 1}"
}
