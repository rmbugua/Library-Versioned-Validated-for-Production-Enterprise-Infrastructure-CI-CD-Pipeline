output "jenkins_ip_address" {
  value = "${aws_instance.jenkins-instance.public_ip}"
}
output "endpoint" {
  value = "${aws_s3_bucket.app.bucket_domain_name}/index.html"
}
