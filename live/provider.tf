
terraform {
  #required_version = ">= 1.1.5"
  required_providers {

    kubernetes = {
      source = "hashicorp/kubernetes"
    }

    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.4.1"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.1"
    }
  }

  # backend "kubernetes" {    
  #   secret_suffix = "state"    
  #   #config_path   = "../certificado/kube-prueba.kubeconfig"

  # }  

  backend "local" {
    path = "terraform.tfstate"
  }

}

provider "kubernetes" {
  host = var.host
  #config_path = "~/.kube/config"

  # client_certificate     = base64decode(var.client_certificate)
  # client_key             = base64decode(var.client_key)
  # cluster_ca_certificate = base64decode(var.cluster_ca_certificate) 

  client_certificate     = file("../certificado/client-certificate.pem")
  client_key             = file("../certificado/client-key.key")
  cluster_ca_certificate = file("../certificado/certificate-authority.pem")
}

provider "helm" {
  kubernetes {
    #config_path = "~/.kube/config"
    host                   = var.host
    client_certificate     = file("../certificado/client-certificate.pem")
    client_key             = file("../certificado/client-key.key")
    cluster_ca_certificate = file("../certificado/certificate-authority.pem")
  }
}