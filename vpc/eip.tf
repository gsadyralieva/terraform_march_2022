resource "aws_eip" "main" {
    tags = {
        Name = "${var.env}-${var.app}-eip"
    }
}