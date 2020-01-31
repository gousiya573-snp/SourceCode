
variable "client_id" {
     default = "000000-0000-0000-0000-00000000"
}
variable "client_secret" {
    default = "000000-0000-0000-0000-00000000"
}

variable "agent_count" {
    default = 1
}

variable "admin_username" {
    default = "gousiya"
}

variable "nodepool_name" {
    default = "githubnode"
}

variable "vm_size" {
    default = "Standard_DS1_v2"
}

variable "ssh_public_key" {
    default = "~/.ssh/id_rsa.pub"
}

variable "dns_prefix" {
    default = "githubk8aks"
}

variable cluster_name {
    default = "githubk8aks"
}

variable resource_group_name {
    default = "github-azure-k8s"
}

variable location {
    default = "Central US"
}

