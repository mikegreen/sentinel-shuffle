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
