resource "aws_instance" "redash-instance" {
  ami = "ami-0c654c3ab463d22f6"
  instance_type = "t2.small"
  subnet_id = aws_subnet.redash-subnet[0].id
  vpc_security_group_ids = [aws_security_group.redash-sg.id]
  key_name = aws_key_pair.redash-key-pair.key_name
}
