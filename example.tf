terraform {
  required_providers {
    randomtest = {
      source = "mikedomain1/miketest/random2"
    }
  }
}

# provider "randomtest" {

# }

resource "random_shuffle2" "app-foos" {
  provider     = randomtest
  input        = ["foo1", "foo2", "foo3", "foo4", "foo5"]
  result_count = 1
}

output "shuffled_value" {
  value = random_shuffle2.app-foos
}

# // this should pass - using APP tier
# resource "aws_instance" "app-shuffled" {
#   instance_type = "t2.nano"

#   subnet_id = "${random_shuffle.app-subnets.result[0]}"
#   tags      = "${merge(map("Name", "test-CLOUD-1131-app"), module.hulu.tags)}"
# }

