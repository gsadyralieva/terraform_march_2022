resource "aws_subnet" "pub_sub_1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.pub_sub_1

  tags = {
    Name = "${var.env}-${var.app}-subnet"
  }
}

resource "aws_subnet" "pub_sub_2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.pub_sub_2

  tags = {
    Name = "${var.env}-${var.app}-subnet"
  }
}

resource "aws_subnet" "pub_sub_3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.pub_sub_3

  tags = {
    Name = "${var.env}-${var.app}-subnet"
  }
}

resource "aws_subnet" "pri_sub_1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.pri_sub_1

  tags = {
    Name = "${var.env}-${var.app}-subnet"
  }
}

resource "aws_subnet" "pri_sub_2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.pri_sub_2

  tags = {
    Name = "${var.env}-${var.app}-subnet"
  }
}
resource "aws_subnet" "pri_sub_3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.pri_sub_3

  tags = {
    Name = "${var.env}-${var.app}-subnet"
  }
}