provider "aws" {
  region     = "us-west-1"
}

resource "aws_security_group" "Scenario2" {
  name        = "SG with Single port(UDP and TCP) and all IP."
  description = "Ingress"
  vpc_id      = "vpc-481b202f"
  tags = {
    Name = "Scenario2"
  }
}

resource "aws_security_group_rule" "ingressrule1" {
  type              = "ingress"
  from_port         = 389
  to_port           = 389
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.Scenario2.id
}

resource "aws_security_group_rule" "ingressrule1" {
  type              = "ingress"
  from_port         = 389
  to_port           = 389
  protocol          = "udp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.Scenario2.id
}


