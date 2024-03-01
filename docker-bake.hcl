variable "TAGS" {
  default = "latest"
}

variable "HUB" {
  default = "localhost:5000"
}

variable "PLATFORMS" {
  default = "linux/amd64,linux/arm64"
}

images = [
  {
    name   = "adservice"
    source = "adservice"
  },
  {
    name = "cartservice"
    source = "cartservice/src/"
  },
  {
    name = "checkoutservice"
    source = "checkoutservice"
  },
  {
    name = "currencyservice"
    source = "currencyservice"
  },
  {
    name = "emailservice"
    source = "emailservice"
  },
  {
    name = "frontend"
    source = "frontend"
  },
  {
    name = "loadgenerator"
    source = "loadgenerator"
  },
  {
    name = "paymentservice"
    source = "paymentservice"
  },
  {
    name = "productcatalogservice"
    source = "productcatalogservice"
  },
  {
    name = "recommendationservice"
    source = "recommendationservice"
  },
  {
    name = "shippingservice"
    source = "shippingservice"
  }
]

target "default" {
  matrix = {
    item = images
  }
  name    = item.name
  context = "/Users/skanda/onlineboutique-app/src/${item.source}"
  tags    = [
    for x in setproduct([HUB], "${split(",", TAGS)}") : join("/${item.name}:", x)
  ]
  args = lookup(item, "args", {})
  platforms = split(",",lookup(item, "platforms", PLATFORMS))
}