resource "aws_instance" "webservers" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  for_each = toset(var.webservers)
  tags = {
    Name = each.key
  }
}
