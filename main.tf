# add single file
resource "git_add" "single_file" {
  directory = "/Users/y/Desktop/terraform_aws_multi_working/main.tf"
  add_paths = ["."]
}

# commit changes and supply message
resource "git_commit" "commit" {
  directory = "/Users/y/Desktop/terraform_aws_multi_working/main.tf"
  message   = "commited"
}

resource "git_push" "push" {
  directory = "/Users/y/Desktop/terraform_aws_multi_working/main.tf"
  refspecs  = ["refs/heads/master:refs/heads/master"]
#   remote = "git@github.com:ytechnologies2019/terraform_aws_multi_working.git"
    auth = {
    ssh_key = {
      private_key_path = pathexpand("~/.ssh/id_rsa")
    }
  }
}