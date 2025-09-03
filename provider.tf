provider "kubernetes" {
    host = minikube_cluster.minikube_docker.host
    client_certificates = minikube_cluster.minikube_docker.client_certificates
    client_key = minikube_cluster.minikube_docker.client_key
    cluster_ca_certificate = minikube_cluster.minikube_docker.cluster_ca_certificate
}

provider "helm" {
    kubernetes = {
        config_path = pathexpand("~/.kube/config")
    }
}