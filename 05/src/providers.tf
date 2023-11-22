terraform {

  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
      version = ">= 0.47.0"
    }
  }
  required_version = ">=0.13"

  backend "s3" {
  endpoint = "storage.yandexcloud.net"
  bucket = "tfstate-hw5"
  region = "ru-central1"
  key = "terraform.tfstate"
  
  skip_region_validation = true
  skip_credentials_validation = true

  dynamodb_endpoint = "https://docapi.serverless.yandexcloud.net/ru-central1/b1gfboajr02kesda5lgl/etn4jd691nbksng55k29"
  dynamodb_table = "tflock-develop" #Таблица блокировок
}
}

provider "yandex" {
  token     = var.token
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone      = var.default_zone
}