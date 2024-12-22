resource "aws_instance" "webservers" {
  ami = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  count = length(var.webservers)
  tags = {
    Name = var.webservers[count.index]
  }
}
