
resource "tls_private_key" "ssh_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "hcloud_ssh_key" "default" {
  depends_on  = [tls_private_key.ssh_key]
  name        = "hetzner_key"
  public_key  = tls_private_key.ssh_key.public_key_openssh
}
