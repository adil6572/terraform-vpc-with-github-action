variable "sg_id" {
  description = "Security group for EC2"
  type        = string


}


variable "subnets" {
  description = "Subnet for EC2"
  type        = list(string)

}

variable "ec2_names" {
  description = "name of EC2 instances"
  type        = list(string)
  default     = ["webserver1", "verserver2"]
}
