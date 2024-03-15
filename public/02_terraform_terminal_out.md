```bash
ujstor  …/personal-s3-storage-infrastructure/hetzner-infra   master !?  22:56  terraform init

Initializing the backend...

Initializing provider plugins...
- Reusing previous version of hetznercloud/hcloud from the dependency lock file
- Reusing previous version of hashicorp/tls from the dependency lock file
- Using previously-installed hetznercloud/hcloud v1.45.0
- Using previously-installed hashicorp/tls v4.0.5

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.

ujstor  …/personal-s3-storage-infrastructure/hetzner-infra   master !?  22:56  terraform apply 

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # hcloud_network.network will be created
  + resource "hcloud_network" "network" {
      + delete_protection        = false
      + expose_routes_to_vswitch = false
      + id                       = (known after apply)
      + ip_range                 = "10.0.0.0/16"
      + name                     = "network"
    }

  # hcloud_network_subnet.minio_subnet will be created
  + resource "hcloud_network_subnet" "minio_subnet" {
      + gateway      = (known after apply)
      + id           = (known after apply)
      + ip_range     = "10.0.1.0/24"
      + network_id   = (known after apply)
      + network_zone = "eu-central"
      + type         = "cloud"
    }

  # hcloud_server.minio[0] will be created
  + resource "hcloud_server" "minio" {
      + allow_deprecated_images    = false
      + backup_window              = (known after apply)
      + backups                    = false
      + datacenter                 = (known after apply)
      + delete_protection          = false
      + firewall_ids               = (known after apply)
      + id                         = (known after apply)
      + ignore_remote_firewall_ids = false
      + image                      = "ubuntu-20.04"
      + ipv4_address               = (known after apply)
      + ipv6_address               = (known after apply)
      + ipv6_network               = (known after apply)
      + keep_disk                  = false
      + labels                     = {
          + "type" = "minio"
        }
      + location                   = "fsn1"
      + name                       = "minio-0"
      + primary_disk_size          = (known after apply)
      + rebuild_protection         = false
      + server_type                = "cx21"
      + shutdown_before_deletion   = false
      + ssh_keys                   = (known after apply)
      + status                     = (known after apply)

      + public_net {
          + ipv4         = (known after apply)
          + ipv4_enabled = true
          + ipv6         = (known after apply)
          + ipv6_enabled = true
        }
    }

  # hcloud_server.minio[1] will be created
  + resource "hcloud_server" "minio" {
      + allow_deprecated_images    = false
      + backup_window              = (known after apply)
      + backups                    = false
      + datacenter                 = (known after apply)
      + delete_protection          = false
      + firewall_ids               = (known after apply)
      + id                         = (known after apply)
      + ignore_remote_firewall_ids = false
      + image                      = "ubuntu-20.04"
      + ipv4_address               = (known after apply)
      + ipv6_address               = (known after apply)
      + ipv6_network               = (known after apply)
      + keep_disk                  = false
      + labels                     = {
          + "type" = "minio"
        }
      + location                   = "nbg1"
      + name                       = "minio-1"
      + primary_disk_size          = (known after apply)
      + rebuild_protection         = false
      + server_type                = "cx21"
      + shutdown_before_deletion   = false
      + ssh_keys                   = (known after apply)
      + status                     = (known after apply)

      + public_net {
          + ipv4         = (known after apply)
          + ipv4_enabled = true
          + ipv6         = (known after apply)
          + ipv6_enabled = true
        }
    }

  # hcloud_server.minio[2] will be created
  + resource "hcloud_server" "minio" {
      + allow_deprecated_images    = false
      + backup_window              = (known after apply)
      + backups                    = false
      + datacenter                 = (known after apply)
      + delete_protection          = false
      + firewall_ids               = (known after apply)
      + id                         = (known after apply)
      + ignore_remote_firewall_ids = false
      + image                      = "ubuntu-20.04"
      + ipv4_address               = (known after apply)
      + ipv6_address               = (known after apply)
      + ipv6_network               = (known after apply)
      + keep_disk                  = false
      + labels                     = {
          + "type" = "minio"
        }
      + location                   = "hel1"
      + name                       = "minio-2"
      + primary_disk_size          = (known after apply)
      + rebuild_protection         = false
      + server_type                = "cx21"
      + shutdown_before_deletion   = false
      + ssh_keys                   = (known after apply)
      + status                     = (known after apply)

      + public_net {
          + ipv4         = (known after apply)
          + ipv4_enabled = true
          + ipv6         = (known after apply)
          + ipv6_enabled = true
        }
    }

  # hcloud_server.minio[3] will be created
  + resource "hcloud_server" "minio" {
      + allow_deprecated_images    = false
      + backup_window              = (known after apply)
      + backups                    = false
      + datacenter                 = (known after apply)
      + delete_protection          = false
      + firewall_ids               = (known after apply)
      + id                         = (known after apply)
      + ignore_remote_firewall_ids = false
      + image                      = "ubuntu-20.04"
      + ipv4_address               = (known after apply)
      + ipv6_address               = (known after apply)
      + ipv6_network               = (known after apply)
      + keep_disk                  = false
      + labels                     = {
          + "type" = "minio"
        }
      + location                   = "fsn1"
      + name                       = "minio-3"
      + primary_disk_size          = (known after apply)
      + rebuild_protection         = false
      + server_type                = "cx21"
      + shutdown_before_deletion   = false
      + ssh_keys                   = (known after apply)
      + status                     = (known after apply)

      + public_net {
          + ipv4         = (known after apply)
          + ipv4_enabled = true
          + ipv6         = (known after apply)
          + ipv6_enabled = true
        }
    }

  # hcloud_server.minio_lb[0] will be created
  + resource "hcloud_server" "minio_lb" {
      + allow_deprecated_images    = false
      + backup_window              = (known after apply)
      + backups                    = false
      + datacenter                 = (known after apply)
      + delete_protection          = false
      + firewall_ids               = (known after apply)
      + id                         = (known after apply)
      + ignore_remote_firewall_ids = false
      + image                      = "ubuntu-20.04"
      + ipv4_address               = (known after apply)
      + ipv6_address               = (known after apply)
      + ipv6_network               = (known after apply)
      + keep_disk                  = false
      + labels                     = {
          + "type" = "minio-lb"
        }
      + location                   = "fsn1"
      + name                       = "minio-lb-0"
      + primary_disk_size          = (known after apply)
      + rebuild_protection         = false
      + server_type                = "cx21"
      + shutdown_before_deletion   = false
      + ssh_keys                   = (known after apply)
      + status                     = (known after apply)
    }

  # hcloud_server_network.deployment_subnet_minio_lb[0] will be created
  + resource "hcloud_server_network" "deployment_subnet_minio_lb" {
      + id          = (known after apply)
      + ip          = "10.0.1.7"
      + mac_address = (known after apply)
      + server_id   = (known after apply)
      + subnet_id   = (known after apply)
    }

  # hcloud_server_network.minio_subnet[0] will be created
  + resource "hcloud_server_network" "minio_subnet" {
      + id          = (known after apply)
      + ip          = "10.0.1.2"
      + mac_address = (known after apply)
      + server_id   = (known after apply)
      + subnet_id   = (known after apply)
    }

  # hcloud_server_network.minio_subnet[1] will be created
  + resource "hcloud_server_network" "minio_subnet" {
      + id          = (known after apply)
      + ip          = "10.0.1.3"
      + mac_address = (known after apply)
      + server_id   = (known after apply)
      + subnet_id   = (known after apply)
    }

  # hcloud_server_network.minio_subnet[2] will be created
  + resource "hcloud_server_network" "minio_subnet" {
      + id          = (known after apply)
      + ip          = "10.0.1.4"
      + mac_address = (known after apply)
      + server_id   = (known after apply)
      + subnet_id   = (known after apply)
    }

  # hcloud_server_network.minio_subnet[3] will be created
  + resource "hcloud_server_network" "minio_subnet" {
      + id          = (known after apply)
      + ip          = "10.0.1.5"
      + mac_address = (known after apply)
      + server_id   = (known after apply)
      + subnet_id   = (known after apply)
    }

  # hcloud_ssh_key.default will be created
  + resource "hcloud_ssh_key" "default" {
      + fingerprint = (known after apply)
      + id          = (known after apply)
      + name        = "hetzner_key"
      + public_key  = (known after apply)
    }

  # hcloud_volume.minio_volume[0] will be created
  + resource "hcloud_volume" "minio_volume" {
      + delete_protection = false
      + format            = "xfs"
      + id                = (known after apply)
      + linux_device      = (known after apply)
      + location          = "fsn1"
      + name              = "drive-1"
      + server_id         = (known after apply)
      + size              = 20
    }

  # hcloud_volume.minio_volume[1] will be created
  + resource "hcloud_volume" "minio_volume" {
      + delete_protection = false
      + format            = "xfs"
      + id                = (known after apply)
      + linux_device      = (known after apply)
      + location          = "nbg1"
      + name              = "drive-2"
      + server_id         = (known after apply)
      + size              = 20
    }

  # hcloud_volume.minio_volume[2] will be created
  + resource "hcloud_volume" "minio_volume" {
      + delete_protection = false
      + format            = "xfs"
      + id                = (known after apply)
      + linux_device      = (known after apply)
      + location          = "hel1"
      + name              = "drive-3"
      + server_id         = (known after apply)
      + size              = 20
    }

  # hcloud_volume.minio_volume[3] will be created
  + resource "hcloud_volume" "minio_volume" {
      + delete_protection = false
      + format            = "xfs"
      + id                = (known after apply)
      + linux_device      = (known after apply)
      + location          = "fsn1"
      + name              = "drive-4"
      + server_id         = (known after apply)
      + size              = 20
    }

  # hcloud_volume.minio_volume[4] will be created
  + resource "hcloud_volume" "minio_volume" {
      + delete_protection = false
      + format            = "xfs"
      + id                = (known after apply)
      + linux_device      = (known after apply)
      + location          = "fsn1"
      + name              = "drive-5"
      + server_id         = (known after apply)
      + size              = 20
    }

  # hcloud_volume.minio_volume[5] will be created
  + resource "hcloud_volume" "minio_volume" {
      + delete_protection = false
      + format            = "xfs"
      + id                = (known after apply)
      + linux_device      = (known after apply)
      + location          = "nbg1"
      + name              = "drive-6"
      + server_id         = (known after apply)
      + size              = 20
    }

  # hcloud_volume.minio_volume[6] will be created
  + resource "hcloud_volume" "minio_volume" {
      + delete_protection = false
      + format            = "xfs"
      + id                = (known after apply)
      + linux_device      = (known after apply)
      + location          = "hel1"
      + name              = "drive-7"
      + server_id         = (known after apply)
      + size              = 20
    }

  # hcloud_volume.minio_volume[7] will be created
  + resource "hcloud_volume" "minio_volume" {
      + delete_protection = false
      + format            = "xfs"
      + id                = (known after apply)
      + linux_device      = (known after apply)
      + location          = "fsn1"
      + name              = "drive-8"
      + server_id         = (known after apply)
      + size              = 20
    }

  # hcloud_volume.minio_volume[8] will be created
  + resource "hcloud_volume" "minio_volume" {
      + delete_protection = false
      + format            = "xfs"
      + id                = (known after apply)
      + linux_device      = (known after apply)
      + location          = "fsn1"
      + name              = "drive-9"
      + server_id         = (known after apply)
      + size              = 20
    }

  # hcloud_volume.minio_volume[9] will be created
  + resource "hcloud_volume" "minio_volume" {
      + delete_protection = false
      + format            = "xfs"
      + id                = (known after apply)
      + linux_device      = (known after apply)
      + location          = "nbg1"
      + name              = "drive-10"
      + server_id         = (known after apply)
      + size              = 20
    }

  # hcloud_volume.minio_volume[10] will be created
  + resource "hcloud_volume" "minio_volume" {
      + delete_protection = false
      + format            = "xfs"
      + id                = (known after apply)
      + linux_device      = (known after apply)
      + location          = "hel1"
      + name              = "drive-11"
      + server_id         = (known after apply)
      + size              = 20
    }

  # hcloud_volume.minio_volume[11] will be created
  + resource "hcloud_volume" "minio_volume" {
      + delete_protection = false
      + format            = "xfs"
      + id                = (known after apply)
      + linux_device      = (known after apply)
      + location          = "fsn1"
      + name              = "drive-12"
      + server_id         = (known after apply)
      + size              = 20
    }

  # hcloud_volume.minio_volume[12] will be created
  + resource "hcloud_volume" "minio_volume" {
      + delete_protection = false
      + format            = "xfs"
      + id                = (known after apply)
      + linux_device      = (known after apply)
      + location          = "fsn1"
      + name              = "drive-13"
      + server_id         = (known after apply)
      + size              = 20
    }

  # hcloud_volume.minio_volume[13] will be created
  + resource "hcloud_volume" "minio_volume" {
      + delete_protection = false
      + format            = "xfs"
      + id                = (known after apply)
      + linux_device      = (known after apply)
      + location          = "nbg1"
      + name              = "drive-14"
      + server_id         = (known after apply)
      + size              = 20
    }

  # hcloud_volume.minio_volume[14] will be created
  + resource "hcloud_volume" "minio_volume" {
      + delete_protection = false
      + format            = "xfs"
      + id                = (known after apply)
      + linux_device      = (known after apply)
      + location          = "hel1"
      + name              = "drive-15"
      + server_id         = (known after apply)
      + size              = 20
    }

  # hcloud_volume.minio_volume[15] will be created
  + resource "hcloud_volume" "minio_volume" {
      + delete_protection = false
      + format            = "xfs"
      + id                = (known after apply)
      + linux_device      = (known after apply)
      + location          = "fsn1"
      + name              = "drive-16"
      + server_id         = (known after apply)
      + size              = 20
    }

  # hcloud_volume_attachment.minio_vol_attachment[0] will be created
  + resource "hcloud_volume_attachment" "minio_vol_attachment" {
      + automount = true
      + id        = (known after apply)
      + server_id = (known after apply)
      + volume_id = (known after apply)
    }

  # hcloud_volume_attachment.minio_vol_attachment[1] will be created
  + resource "hcloud_volume_attachment" "minio_vol_attachment" {
      + automount = true
      + id        = (known after apply)
      + server_id = (known after apply)
      + volume_id = (known after apply)
    }

  # hcloud_volume_attachment.minio_vol_attachment[2] will be created
  + resource "hcloud_volume_attachment" "minio_vol_attachment" {
      + automount = true
      + id        = (known after apply)
      + server_id = (known after apply)
      + volume_id = (known after apply)
    }

  # hcloud_volume_attachment.minio_vol_attachment[3] will be created
  + resource "hcloud_volume_attachment" "minio_vol_attachment" {
      + automount = true
      + id        = (known after apply)
      + server_id = (known after apply)
      + volume_id = (known after apply)
    }

  # hcloud_volume_attachment.minio_vol_attachment[4] will be created
  + resource "hcloud_volume_attachment" "minio_vol_attachment" {
      + automount = true
      + id        = (known after apply)
      + server_id = (known after apply)
      + volume_id = (known after apply)
    }

  # hcloud_volume_attachment.minio_vol_attachment[5] will be created
  + resource "hcloud_volume_attachment" "minio_vol_attachment" {
      + automount = true
      + id        = (known after apply)
      + server_id = (known after apply)
      + volume_id = (known after apply)
    }

  # hcloud_volume_attachment.minio_vol_attachment[6] will be created
  + resource "hcloud_volume_attachment" "minio_vol_attachment" {
      + automount = true
      + id        = (known after apply)
      + server_id = (known after apply)
      + volume_id = (known after apply)
    }

  # hcloud_volume_attachment.minio_vol_attachment[7] will be created
  + resource "hcloud_volume_attachment" "minio_vol_attachment" {
      + automount = true
      + id        = (known after apply)
      + server_id = (known after apply)
      + volume_id = (known after apply)
    }

  # hcloud_volume_attachment.minio_vol_attachment[8] will be created
  + resource "hcloud_volume_attachment" "minio_vol_attachment" {
      + automount = true
      + id        = (known after apply)
      + server_id = (known after apply)
      + volume_id = (known after apply)
    }

  # hcloud_volume_attachment.minio_vol_attachment[9] will be created
  + resource "hcloud_volume_attachment" "minio_vol_attachment" {
      + automount = true
      + id        = (known after apply)
      + server_id = (known after apply)
      + volume_id = (known after apply)
    }

  # hcloud_volume_attachment.minio_vol_attachment[10] will be created
  + resource "hcloud_volume_attachment" "minio_vol_attachment" {
      + automount = true
      + id        = (known after apply)
      + server_id = (known after apply)
      + volume_id = (known after apply)
    }

  # hcloud_volume_attachment.minio_vol_attachment[11] will be created
  + resource "hcloud_volume_attachment" "minio_vol_attachment" {
      + automount = true
      + id        = (known after apply)
      + server_id = (known after apply)
      + volume_id = (known after apply)
    }

  # hcloud_volume_attachment.minio_vol_attachment[12] will be created
  + resource "hcloud_volume_attachment" "minio_vol_attachment" {
      + automount = true
      + id        = (known after apply)
      + server_id = (known after apply)
      + volume_id = (known after apply)
    }

  # hcloud_volume_attachment.minio_vol_attachment[13] will be created
  + resource "hcloud_volume_attachment" "minio_vol_attachment" {
      + automount = true
      + id        = (known after apply)
      + server_id = (known after apply)
      + volume_id = (known after apply)
    }

  # hcloud_volume_attachment.minio_vol_attachment[14] will be created
  + resource "hcloud_volume_attachment" "minio_vol_attachment" {
      + automount = true
      + id        = (known after apply)
      + server_id = (known after apply)
      + volume_id = (known after apply)
    }

  # hcloud_volume_attachment.minio_vol_attachment[15] will be created
  + resource "hcloud_volume_attachment" "minio_vol_attachment" {
      + automount = true
      + id        = (known after apply)
      + server_id = (known after apply)
      + volume_id = (known after apply)
    }

  # tls_private_key.ssh_key will be created
  + resource "tls_private_key" "ssh_key" {
      + algorithm                     = "RSA"
      + ecdsa_curve                   = "P224"
      + id                            = (known after apply)
      + private_key_openssh           = (sensitive value)
      + private_key_pem               = (sensitive value)
      + private_key_pem_pkcs8         = (sensitive value)
      + public_key_fingerprint_md5    = (known after apply)
      + public_key_fingerprint_sha256 = (known after apply)
      + public_key_openssh            = (known after apply)
      + public_key_pem                = (known after apply)
      + rsa_bits                      = 4096
    }

Plan: 46 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + public_key    = (known after apply)
  + server_ips    = {
      + minio    = {
          + minio-0 = (known after apply)
          + minio-1 = (known after apply)
          + minio-2 = (known after apply)
          + minio-3 = (known after apply)
        }
      + minio_lb = {
          + minio-lb-0 = (known after apply)
        }
    }
  + server_status = {
      + minio    = {
          + minio-0 = (known after apply)
          + minio-1 = (known after apply)
          + minio-2 = (known after apply)
          + minio-3 = (known after apply)
        }
      + minio_lb = {
          + minio-lb-0 = (known after apply)
        }
    }

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

hcloud_network.network: Creating...
tls_private_key.ssh_key: Creating...
hcloud_network.network: Creation complete after 1s [id=4003663]
hcloud_network_subnet.minio_subnet: Creating...
tls_private_key.ssh_key: Creation complete after 2s [id=7fc72c07547ce4d62411510a3d29ef2c12a7f3a8]
hcloud_ssh_key.default: Creating...
hcloud_ssh_key.default: Creation complete after 0s [id=20004631]
hcloud_network_subnet.minio_subnet: Creation complete after 1s [id=4003663-10.0.1.0/24]
hcloud_server.minio[1]: Creating...
hcloud_server.minio[0]: Creating...
hcloud_server.minio[3]: Creating...
hcloud_server.minio[2]: Creating...
hcloud_server.minio[1]: Still creating... [10s elapsed]
hcloud_server.minio[0]: Still creating... [10s elapsed]
hcloud_server.minio[2]: Still creating... [10s elapsed]
hcloud_server.minio[3]: Still creating... [10s elapsed]
hcloud_server.minio[1]: Provisioning with 'local-exec'...
hcloud_server.minio[1] (local-exec): (output suppressed due to sensitive value in config)
hcloud_server.minio[1]: Creation complete after 12s [id=44645939]
hcloud_server.minio[2]: Provisioning with 'local-exec'...
hcloud_server.minio[2] (local-exec): (output suppressed due to sensitive value in config)
hcloud_server.minio[2]: Creation complete after 12s [id=44645942]
hcloud_server.minio[0]: Provisioning with 'local-exec'...
hcloud_server.minio[0] (local-exec): (output suppressed due to sensitive value in config)
hcloud_server.minio[0]: Creation complete after 16s [id=44645940]
hcloud_server.minio[3]: Provisioning with 'local-exec'...
hcloud_server.minio[3] (local-exec): (output suppressed due to sensitive value in config)
hcloud_server.minio[3]: Creation complete after 16s [id=44645941]
hcloud_volume.minio_volume[6]: Creating...
hcloud_volume.minio_volume[7]: Creating...
hcloud_volume.minio_volume[14]: Creating...
hcloud_volume.minio_volume[15]: Creating...
hcloud_server_network.minio_subnet[2]: Creating...
hcloud_server_network.minio_subnet[3]: Creating...
hcloud_volume.minio_volume[11]: Creating...
hcloud_server_network.minio_subnet[0]: Creating...
hcloud_server_network.minio_subnet[1]: Creating...
hcloud_server.minio_lb[0]: Creating...
hcloud_server_network.minio_subnet[2]: Creation complete after 4s [id=44645942-4003663]
hcloud_volume.minio_volume[9]: Creating...
hcloud_server_network.minio_subnet[3]: Creation complete after 4s [id=44645941-4003663]
hcloud_volume.minio_volume[2]: Creating...
hcloud_server_network.minio_subnet[0]: Creation complete after 5s [id=44645940-4003663]
hcloud_volume.minio_volume[4]: Creating...
hcloud_server_network.minio_subnet[1]: Creation complete after 6s [id=44645939-4003663]
hcloud_volume.minio_volume[10]: Creating...
hcloud_volume.minio_volume[11]: Creation complete after 6s [id=100471761]
hcloud_volume.minio_volume[0]: Creating...
hcloud_volume.minio_volume[7]: Creation complete after 6s [id=100471765]
hcloud_volume.minio_volume[13]: Creating...
hcloud_volume.minio_volume[14]: Creation complete after 6s [id=100471763]
hcloud_volume.minio_volume[5]: Creating...
hcloud_volume.minio_volume[6]: Creation complete after 6s [id=100471764]
hcloud_volume.minio_volume[8]: Creating...
hcloud_volume.minio_volume[15]: Creation complete after 7s [id=100471762]
hcloud_volume.minio_volume[3]: Creating...
hcloud_volume.minio_volume[9]: Creation complete after 5s [id=100471766]
hcloud_volume.minio_volume[12]: Creating...
hcloud_volume.minio_volume[2]: Creation complete after 5s [id=100471767]
hcloud_volume.minio_volume[1]: Creating...
hcloud_volume.minio_volume[4]: Creation complete after 5s [id=100471768]
hcloud_server.minio_lb[0]: Still creating... [10s elapsed]
hcloud_volume.minio_volume[0]: Creation complete after 6s [id=100471769]
hcloud_volume.minio_volume[8]: Creation complete after 6s [id=100471772]
hcloud_volume.minio_volume[13]: Creation complete after 6s [id=100471773]
hcloud_volume.minio_volume[5]: Creation complete after 6s [id=100471771]
hcloud_volume.minio_volume[10]: Creation complete after 6s [id=100471770]
hcloud_volume.minio_volume[3]: Creation complete after 7s [id=100471774]
hcloud_volume.minio_volume[1]: Creation complete after 6s [id=100471776]
hcloud_volume.minio_volume[12]: Creation complete after 6s [id=100471775]
hcloud_volume_attachment.minio_vol_attachment[8]: Creating...
hcloud_volume_attachment.minio_vol_attachment[15]: Creating...
hcloud_volume_attachment.minio_vol_attachment[14]: Creating...
hcloud_volume_attachment.minio_vol_attachment[7]: Creating...
hcloud_volume_attachment.minio_vol_attachment[11]: Creating...
hcloud_volume_attachment.minio_vol_attachment[5]: Creating...
hcloud_volume_attachment.minio_vol_attachment[0]: Creating...
hcloud_volume_attachment.minio_vol_attachment[3]: Creating...
hcloud_volume_attachment.minio_vol_attachment[1]: Creating...
hcloud_server.minio_lb[0]: Creation complete after 16s [id=44645947]
hcloud_volume_attachment.minio_vol_attachment[9]: Creating...
hcloud_volume_attachment.minio_vol_attachment[11]: Creation complete after 4s [id=100471761]
hcloud_volume_attachment.minio_vol_attachment[6]: Creating...
hcloud_volume_attachment.minio_vol_attachment[0]: Creation complete after 5s [id=100471769]
hcloud_volume_attachment.minio_vol_attachment[4]: Creating...
hcloud_volume_attachment.minio_vol_attachment[7]: Creation complete after 5s [id=100471765]
hcloud_volume_attachment.minio_vol_attachment[13]: Creating...
hcloud_volume_attachment.minio_vol_attachment[8]: Creation complete after 6s [id=100471772]
hcloud_volume_attachment.minio_vol_attachment[12]: Creating...
hcloud_volume_attachment.minio_vol_attachment[15]: Creation complete after 6s [id=100471762]
hcloud_volume_attachment.minio_vol_attachment[10]: Creating...
hcloud_volume_attachment.minio_vol_attachment[14]: Creation complete after 6s [id=100471763]
hcloud_volume_attachment.minio_vol_attachment[2]: Creating...
hcloud_volume_attachment.minio_vol_attachment[5]: Creation complete after 6s [id=100471771]
hcloud_server_network.deployment_subnet_minio_lb[0]: Creating...
hcloud_volume_attachment.minio_vol_attachment[3]: Creation complete after 7s [id=100471774]
hcloud_volume_attachment.minio_vol_attachment[9]: Creation complete after 6s [id=100471766]
hcloud_volume_attachment.minio_vol_attachment[1]: Creation complete after 7s [id=100471776]
hcloud_volume_attachment.minio_vol_attachment[4]: Creation complete after 4s [id=100471768]
hcloud_volume_attachment.minio_vol_attachment[6]: Creation complete after 6s [id=100471764]
hcloud_volume_attachment.minio_vol_attachment[12]: Creation complete after 4s [id=100471775]
hcloud_volume_attachment.minio_vol_attachment[13]: Creation complete after 6s [id=100471773]
hcloud_volume_attachment.minio_vol_attachment[10]: Creation complete after 5s [id=100471770]
hcloud_volume_attachment.minio_vol_attachment[2]: Creation complete after 6s [id=100471767]
hcloud_server_network.deployment_subnet_minio_lb[0]: Creation complete after 6s [id=44645947-4003663]

Apply complete! Resources: 46 added, 0 changed, 0 destroyed.

Outputs:

public_key = <<EOT
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC5XeCwBHRdGmto5eNNv5d/FkwkworyCtUjFmPldrcoE5eIqfn1E9PFSq4DLstAgTLDMr1YZJKYHps8fWgPRafI9y9vprFE9EsHrFDzFe36fuLV1nmHzBEYPZB5v+rXu7kjk5jK1BXT2JZIY48GaVI4jhYw0GiyoB63cMYtw6w0BPnSc+ANtkH4zSumTDVRAkwmuoHRBj9NZSd6bu2RqWTUk71IKMjJH3I8tFr9TRMQ8L2bdMW8onm8K09yRVfzbujqA6euuAjflnLtCCdGuMvV1A3isUn57oYcl/RkcurvrWXAIeR2jLq5XOGb+A5oLLTL9wtezPD4s1Yc8v6UuJ1STQQVACX9igbGbUMo05sQLb3rxmLMz37oYXHaT8FCaDFqzfkP922x7EIFn25lse6ZqFhSG5ijDkBPt17bXuxn4FZx1Svxbdl07JCGT8aglbyUvAEnhp+DiiEdWnnxAatG4JUGUNMpJx2HRAi9MqH5Fa3KB221FCdAzaahZSfDPCYyGRnNQ8exJ3lOdsObBHk2y390ry1/tFgC5L0EIWw0NJF1fyBDnp5eX9M9H/j/DYKOBz0rawzyjCMbAe1yaV9J+AFk4pTTHrRPinrkOA8JCh9izr9gbHI7wGuKcJs2Mflm+j3pnHCYNf0tqbG5CtsN0QoZUby+9zkeDgs5xd95Lw==

EOT
server_ips = {
  "minio" = {
    "minio-0" = "49.13.73.3"
    "minio-1" = "128.140.0.112"
    "minio-2" = "135.181.88.205"
    "minio-3" = "91.107.208.20"
  }
  "minio_lb" = {
    "minio-lb-0" = "49.13.86.88"
  }
}
server_status = {
  "minio" = {
    "minio-0" = "running"
    "minio-1" = "running"
    "minio-2" = "running"
    "minio-3" = "running"
  }
  "minio_lb" = {
    "minio-lb-0" = "running"
  }
}

```
