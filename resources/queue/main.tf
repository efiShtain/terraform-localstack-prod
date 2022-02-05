locals {
  sqs_prefix = terraform.workspace
}
resource "aws_sqs_queue" "queue" {
  name          = "${local.sqs_prefix}-${var.queue_name}"
  delay_seconds = 0
}
