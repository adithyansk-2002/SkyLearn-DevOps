terraform {
  backend "s3" {
    bucket = "skylearn-backups-adithyan-902734532014-ap-south-1-an"
    key    = "terraform/dev/terraform.tfstate"
    region = "ap-south-1"
  }
}
