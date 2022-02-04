resource "aws_sqs_queue" "queue" {
  name          = "my-queue"
  delay_seconds = 0
}
