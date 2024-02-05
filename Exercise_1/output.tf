output "instance_T2" {
  description = "ID of instances T2"
  value = try(aws_instance.instance_1[*].id)
}
# output "instance_M4" {
#   description = "ID of instances M4"
#   value = try(aws_instance.instance_2[*].id)
# }