target "docker-metadata-action" {}


group "all" {
  targets = ["adservice", "cartservice", "checkoutservice", "currencyservice", "emailservice", "frontend", "loadgenerator", "paymentservice", "productcatalogservice", "recommendationservice", "shippingservice"]
}

target "adservice" {
  inherits = ["docker-metadata-action"]
  context = "./src/adservice"
  platforms  = ["linux/amd64", "linux/arm64"]
}

target "cartservice" {
  inherits = ["docker-metadata-action"]
  context = "./src/cartservice/src/"
  platforms  = ["linux/amd64"]
}

target "checkoutservice" {
  inherits = ["docker-metadata-action"]
  context = "./src/checkoutservice"
  platforms  = ["linux/amd64", "linux/arm64"]
}

target "currencyservice" {
  inherits = ["docker-metadata-action"]
  context = "./src/currencyservice"
  platforms  = ["linux/amd64", "linux/arm64"]
}

target "emailservice" {
  inherits = ["docker-metadata-action"]
  context = "./src/emailservice"
  platforms  = ["linux/amd64", "linux/arm64"]
}

target "frontend" {
  inherits = ["docker-metadata-action"]
  context = "./src/frontend"
  platforms  = ["linux/amd64", "linux/arm64"]
}

target "loadgenerator" {
  inherits = ["docker-metadata-action"]
  context = "./src/loadgenerator"
  platforms  = ["linux/amd64"]
}

target "paymentservice" {
  inherits = ["docker-metadata-action"]
  context = "./src/paymentservice"
  platforms  = ["linux/amd64", "linux/arm64"]
}

target "productcatalogservice" {
  inherits = ["docker-metadata-action"]
  context = "./src/productcatalogservice"
  platforms  = ["linux/amd64", "linux/arm64"]
}

target "recommendationservice" {
  inherits = ["docker-metadata-action"]
  context = "./src/recommendationservice"
  platforms  = ["linux/amd64", "linux/arm64"]
}

target "shippingservice" {
  inherits = ["docker-metadata-action"]
  context = "./src/shippingservice"
  platforms  = ["linux/amd64", "linux/arm64"]
}

# Test