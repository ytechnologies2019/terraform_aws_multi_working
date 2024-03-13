# add single file
resource "git_add" "single_file" {
  directory = "."
  add_paths = ["."]
}

# commit changes and supply message
resource "git_commit" "commit" {
  directory = "."
  message   = "commited"
}

resource "git_push" "push" {
  directory = "."
  refspecs  = ["."]
}