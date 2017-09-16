# Terraform variables

variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}

variable "compartment_id" {}

variable "region" {
    default = "us-phoenix-1"
  }

variable "ssh_public_key" {

    default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDAmdcyvIQnD497+A8X66VKdIqc7fhzm4dDUyazfg3qW5HudcPFmXi6kpyzkkzqgzk7l60cjVnCPcb+kV9LHs3i5hjQS63//NbRcz/YbPP6ICczWlebuHC1Ei0LcJTVDHt/alFBzlCIywFiTNogezcsXGLOgHmzIYE/PCPnpAiBALsC+0xJSafOiyQXtJBFcNl8VWflnZVtyGs+PVErc7/18BWpQ8bHCwycYFeqy/b1QfRSJ3HOR2tCGP66HTGJM89V/uLDEC1i95YZompHm4NaCI+f99CoszGbqmVEtdqEuF0C9MjLctUAkTC/LlBcgrOEcUFyQkkowZBBhMNOUQmz gilbertlau@MacBook-2.local"

}

#variable "ssh_private_key" {}

variable "InstanceOS" {
    default = "Oracle Linux"
}

variable "InstanceOSVersion" {
    default = "7.3"
}

variable "DSE_Shape" {
    default = "VM.DenseIO1.8"
#   default = "VM.DenseIO1.16"
}

variable "OPSC_BASE_IMAGE_ID" {
    default = "ocid1.image.oc1.phx.aaaaaaaatrhddghn5rrfhwi5zdbzkii6g2n5zqq34w6wscpdz3c3j64ogjoa"
}

variable "OPSC_Shape" {
    default = "VM.Standard1.8"
}

variable "2TB" {
    default = "2097152"
}

variable "host_user_name" {
    default = "opc"
}

variable "OPSC_BootStrap" {
    default = "./userdata/lcm_opscenter_userdata.sh"
}

variable "DSE_BootStrap" {
    default = "./userdata/lcm_node_userdata.sh"
}

# DSE cluster name
variable "DSE_Cluster_Name" {
   default = "JumpStart"
}

# DataStax Academy Credentials for DSE software download
variable "DataStax_Academy_Creds" {
  type = "map"

  default = {
    username = "datastax@oracle.com"
    password = "*9En9HH4j^p4"
  }
}

# Collect #nodes in each AD from a user
# This value has always to be 1 for Jump Start
variable "Num_DSE_Nodes_In_Each_AD" {
   default = "1"
}

# Collect user provided password for "cassandra" superuser
# The cassandra user's password has to be "datastax1!" for Jump Start
variable "Cassandra_DB_User_Password" {
   default = "datastax1!"
}

