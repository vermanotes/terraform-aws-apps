output "name" {
  value = "${data.template_file.mydata.rendered}"
  description = "S3 PutObject policy configuration"
}
