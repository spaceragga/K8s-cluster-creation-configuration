# Public Subnet
resource "aws_subnet" "public_subnet" {
  count             = length(var.azs)
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = element([var.public_subnet_1_cidr, var.public_subnet_2_cidr], count.index)
  availability_zone = var.azs[count.index]

  tags = {
    Name = "Public Subnet ${count.index + 1}"
  }
}