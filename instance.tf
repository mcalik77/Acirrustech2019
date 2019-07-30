resource "aws_instance" "web1" {
    ami = "ami-035b3c7efe6d061d5" 
    instance_type = "t2.micro"
    key_name = "${aws_key_pair.terraform_april.key_name}"
    security_groups = ["${aws_security_group.sec1.name}"]





    tags = {
        Name = "Dev"
        Dept =  "IT"
        Group = "April"
        Created_by = "Mustafa Calik"
    }
}