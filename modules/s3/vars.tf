variable "bucket_name" {
    description = "name of s3 bucket to be created"
    type = string
}

variable "acl_value" {
    default = "private"
}

variable "tags" {
    description = "tags to be added"
    type = map(string)
    default = {
      terraform = "true"
    }
}
