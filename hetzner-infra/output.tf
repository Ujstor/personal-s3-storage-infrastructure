output "server_ips" {
  value = {
    minio_lb = {
      for idx, instance in hcloud_server.minio_lb : instance.name => instance.ipv4_address
    },
    minio = {
      for idx, instance in hcloud_server.minio : instance.name => instance.ipv4_address
    }
  }
}

output "server_status" {
  value = {
    minio_lb = {
      for instance in hcloud_server.minio_lb : instance.name => instance.status
    },
    minio = {
      for instance in hcloud_server.minio : instance.name => instance.status
    }
  }
}

output "public_key" {
  value = tls_private_key.ssh_key.public_key_openssh
}
