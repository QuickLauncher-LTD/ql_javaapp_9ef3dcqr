project = "javaapp_9ef3dcqr"

app "javaapp_9ef3dcqr" {
  build {
    use "pack" {
      builder     = "heroku/buildpacks:20"
    }
    registry {
      use "docker" {
        image = var.ecr_repo
        tag   = var.image_tag
      }
    }
  }
  deploy {
    use "docker" {
    }
  }
}

variable "image_tag" {
  type    = string
}

variable "ecr_repo" {
  type    = string
}
