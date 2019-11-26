# Refer to https://developers.digitalocean.com/documentation/v2/ for values

resource "digitalocean_droplet" "example" {
  image  = "ubuntu-18-04-x64"
  name   = "example-from-terraform"
  region = var.do_region
  size   = "s-1vcpu-1gb"
}
