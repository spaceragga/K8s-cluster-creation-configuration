# Additional EC2 instances for k3s cluster (if needed)
resource "aws_instance" "k3s_node" {
  count         = var.node_count
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public_subnet[0].id
  key_name      = var.key_name

  vpc_security_group_ids = [aws_security_group.k3s_node_sg.id]

  tags = {
    Name = "K3s Node ${count.index + 1}"
  }
}