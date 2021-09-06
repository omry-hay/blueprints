output "instance_public_ip" {
  value = "${aws_eip.redash-elastic-ip.public_ip}"
  description = "The public IP of your Redash instance"
}
