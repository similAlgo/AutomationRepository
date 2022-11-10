# Managed By : CloudDrove
# Description : This Script is used to create Security Group.
# Copyright @ CloudDrove. All Right Reserved.

#Module      : Label
#Description : This terraform module is designed to generate consistent label names and tags
#              for resources. You can use terraform-labels to implement a strict naming
#              convention.

#Module      : SECURITY GROUP
#Description : Here are an example of how you can use this module in your inventory
#              structure:
resource "aws_security_group" "Scenario6" {
  count =  length(compact(var.allowed_ports))

  name        = "SG with port range(UDP and TCP) and all Multiple IP"
  description = "Ingress"
  vpc_id      = "vpc-481b202f"

  ingress {
    from_port   = element(var.allowed_ports, count.index)
    to_port     = element(var.allowed_ports, count.index)
    protocol    = var.protocol
    cidr_blocks = var.allowed_ip
  }
}