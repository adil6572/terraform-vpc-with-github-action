resource "aws_instance" "web" {
  count         = length(var.ec2_names)
  ami           = data.aws_ami.amazon_ami.id
  instance_type = "t2.micro"


  vpc_security_group_ids      = [var.sg_id]
  associate_public_ip_address = true
  subnet_id                   = var.subnets[count.index]
  tags = {
    Name = var.ec2_names[count.index]
  }
  availability_zone = data.aws_availability_zones.available.names[count.index]
}
