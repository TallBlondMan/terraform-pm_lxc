terraform {
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = "2.7.4"
    }
  }
}

provider "proxmox" {
  pm_api_url      = var.pm_api_url
  pm_tls_insecure = true
}

resource "proxmox_lxc" "alpine_ct" {
  target_node  = "bre-pve-07"
  hostname     = "alpine-terra"
  ostemplate   = "local:vztmpl/alpine-3.18-default_20230607_amd64.tar.xz"
  password     = var.root_ct_passw
  unprivileged = true
  vmid         = "500"
  description  = "Terraform managed container"
  hastate      = "started"

  rootfs {
    storage = "local-zfs"
    size    = "8G"
  }

  mountpoint {
    key     = "0"
    slot    = 0
    storage = "VMs"
    mp      = "/mnt/container/mount-point"
    size    = "2G"
  }

  network {
    name   = "eth0"
    bridge = "vmbr0"
    ip     = "dhcp"
    tag    = "61"
  }
}
