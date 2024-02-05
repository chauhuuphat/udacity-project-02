# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "instance_1" {
  ami = var.instance_1_ami
  instance_type = var.instance_1_type
  tags = {
    Name = var.instance_1_name
  }
  count = 4
}



# TODO: provision 2 m4.large EC2 instances named Udacity M4

# resource "aws_instance" "instance_2" {
#   ami = var.instance_2_ami
#   instance_type = var.instance_2_type
#   tags = {
#     Name = var.instance_2_name
#   }
#   count = 2
# }