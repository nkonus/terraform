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

  variable "key_name"{ } 
  variable "user_name"{ } 
  variable "cidr_block" { }
  variable "cidr_block_subnet" { }
  variable "region" { 
      default = "us-east-1"
  }
  variable "map_public_ip_on_launch"{
      default = true
      type    = bool
  } 
  variable "instance_tenancy" {
      default = "default"
  }