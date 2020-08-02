variable "ami_name"{
    default = "ami-2757f631"
    type    = string
    description  = "this is the definition of your ami"
  } 

  variable "intance_type"{
    default = "t2.micro"
    type    = string
    description  = "this is the definition of your ami"
  } 

  variable "key_name"{ } //ec2KeyPair
  variable "user_name"{ } //ubuntu