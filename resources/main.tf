module "storage" {
  source      = "./storage"
  bucket_name = "my-bucket"
}

module "queue" {
  source     = "./queue"
  queue_name = "my_queue"
}
