job javaapp_9ef3dcqr {

  datacenters = ["dc-quicklauncher"]

  group "quick-launcher" {
    count = 1
    network {
      mode = "bridge"
      port "http" {
        static = 21720
        to = 5000
      }
    }

    service {
      name = replace("javaapp_9ef3dcqr", "_", "-")
      port = "http"

      check {
        type     = "http"
        path     = "/"
        interval = "2s"
        timeout  = "2s"
      }
    }

    task "server" {
      driver = "docker"

     resources {
       cpu    = 250
       memory = 500
     }

      config {
        image = var.image
        ports = ["http"]
      }
    }
  }
}

variable "image" {
    type = string
}

