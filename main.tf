terraform{
    required_providers{
        minikube ={
            source = "scott-the-programmer/minikube"
            version = "0.5.3"
        }
    }
}

resource "minikube_cluster" "minikube_docker" {
  driver       = "docker"
  cluster_name = "devops-project"
  kubernetes_version = "v1.27.4"  # Use a valid version

  addons = [
    "default-storageclass",
    "storage-provisioner"
  ]
}