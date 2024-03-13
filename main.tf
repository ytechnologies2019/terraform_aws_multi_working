# add single file
resource "git_add" "single_file" {
  directory = "."
  add_paths = ["."]
}