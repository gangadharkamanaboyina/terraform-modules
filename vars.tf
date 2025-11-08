variable "instance_type" {
    type = string
}

variable "ami_id" {
    type = string
}

variable sg_ids {
    type = list
}
variable "tags" {
    type = map
    default = {}
}
