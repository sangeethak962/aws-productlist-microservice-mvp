variable "name" { 
    type = string
    default = "mvp" 
    }
variable "vpc_id" { 
    type = string
     }
variable "subnet_id" { type = string }
variable "app_security_group_id" { type = string }
variable "instance_class" { 
    type = string
    default = "db.t3.micro" 
    }
variable "allocated_storage" { 
    type = number
    default = 20 
 }
variable "username" { 
    type = string
    default = "mvpadmin" 
}
variable "password" { 
    type = string
    sensitive = true 
    }
variable "tags" { 
    type = map(string)
    default = {} 
    }
