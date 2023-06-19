resource "aws_vpc" "this" {
  cidr_block = var.cidr_block

  tags = merge(
    var.tags,
    {
      Name = "firewall-vpc"
    },
  )
}

resource "aws_subnet" "this" {
  vpc_id            = aws_vpc.this.id
  cidr_block        = var.subnet_cidr_block
  availability_zone = var.az_region

  tags = merge(
    var.tags,
    {
      Name = "firewall-subnet"
    },
  )
}

resource "aws_internet_gateway" "this" {
  vpc_id = aws_vpc.this.id

  tags = merge(
    var.tags,
    {
      Name = "firewall-igw"
    },
  )
}

resource "aws_route_table" "this" {
  vpc_id = aws_vpc.this.id
  route {
    cidr_block = var.rtb_cidr
    gateway_id = aws_internet_gateway.this.id
  }
  tags = merge(
    var.tags,
    {
      Name = "firewall-rtb"
    },
  )
}

resource "aws_route_table_association" "this" {
  subnet_id      = aws_subnet.this.id
  route_table_id = aws_route_table.this.id
}


resource "aws_route" "this" {
  route_table_id         = aws_vpc.this.default_route_table_id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.this.id
}
