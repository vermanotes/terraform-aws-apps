data "template_file" "mydata" {
  template = "${file("s3-iam-policy_PutObject.json")}"
  vars = {
    bucket_name = "${var.bucket_name}"
  }
}
