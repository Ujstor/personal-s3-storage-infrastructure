locals {
  available_ip_dbminio = [for num in range(2, 254) : cidrhost(hcloud_network_subnet.minio_subnet.ip_range, num)]
}

resource "hcloud_network" "network" {
  name     = "network"
  ip_range = "10.0.0.0/16"
}

resource "hcloud_network_subnet" "minio_subnet" {
  network_id   = hcloud_network.network.id
  type         = "cloud"
  network_zone = "eu-central"
  ip_range     = "10.0.1.0/24"
}

resource "hcloud_server_network" "minio_subnet" {
  count     = var.instances_minio
  server_id = hcloud_server.minio[count.index].id
  subnet_id = hcloud_network_subnet.minio_subnet.id
  ip        = local.available_ip_dbminio[count.index]
}