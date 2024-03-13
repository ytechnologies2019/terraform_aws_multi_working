resource "terraform_data" "example1" {
  provisioner "local-exec" {
    command = "git add ."
  }
}
resource "terraform_data" "example2" {
  provisioner "local-exec" {
    command = "git commit -am ."
  }
}

resource "terraform_data" "example3" {
  provisioner "local-exec" {
    command = "git push"
  }
}
