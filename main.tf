terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "random_password" "test" {
  length  = 16
  special = true
}

resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = true
}

resource "docker_container" "hello_world" {
  name  = "hello_world"
  image = docker_image.nginx.name
  
  ports {
    internal = 80
    external = 8081
  }
}
