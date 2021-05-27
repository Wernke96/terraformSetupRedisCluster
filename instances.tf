resource "aws_instance" "sshhuttle" {
  ami = "ami-00399ec92321828f5"
  security_groups = ["vpn","default"]
  instance_type = "t2.micro"
  key_name = "miami-key"
   tags = {
    Name = "Vpn"
  }  
}