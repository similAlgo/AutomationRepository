module firewall-module {
  source = "../../"
  name = "ssh-rule"
  network = "test-vpc"
  protocol = "tcp"
  ports = ["ssh"]
  source_ranges = ["0.0.0.0/0"]
  target_tags = [""]
}