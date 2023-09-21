terraform{
    required_providers{
        aws={
            source="hashicorp/aws"
            version="~>4.0"
        }
    }
}
provider "aws"{
    region="Singapore"
    access_key="AKIASYLFRR7TV66IK4F6"
    secret_key="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"
}
resource "aws_ec2_instance" "linux_server"{
    ami=""
    instance_type="t2.micro"
}
output "public_ip"{
    value=aws_ec2_instance.demo_instance.public_ip
}