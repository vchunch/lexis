data "aws_ami" "app" {
  most_recent = true
 
  filter {
    name   = "state"
    values = ["available"]
  }
 
  filter {
    name   = "tag:Name"
    values = ["linux-my-web-app"]
  }
 
  filter {
    name   = "tag:Env"
    values = ["dev"]
  }

  owners = ["self"]
}