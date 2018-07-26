resource "aws_instance" "default" {
  ami             = "${lookup(ami-de8fb135, eu-central-1)}"
  instance_type   = "${t2.micro}"
  key_name        = "${erick-key}"
  security_groups = ["${launch-wizard-1}"]
 
  tags {
    Name = "docker-test"
  }
}
