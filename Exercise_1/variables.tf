# Instance Type 1
variable "instance_1_name" {
  description = "name of instance type 1"
  type = string
}

# Instance Type 2
variable "instance_2_name" {
    description = "name of instance type 2"
    type = string
}

# Instance AMI 1
variable "instance_1_ami" {
  description = "value of AMI for instance 1"
  type = string
}

# Instance AMI 2
variable "instance_2_ami" {
  description = "value of AMI for instance 2"
  type = string
}

variable "instance_1_type" {
  description = "Vaule of Instance Type for the EC2 Instance"
  type        = string
}

variable "instance_2_type" {
  description = "Vaule of Instance Type for the EC2 Instance"
  type        = string
}