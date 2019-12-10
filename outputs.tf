output "vpc_id" {
    value = "${module.vpc.vpc_id}"
}

output "s3_id" {
    value = "${aws_s3_bucket.tfe.id}"
}

output "subnet_ids" {
    value = "${module.vpc.subnet_ids}"
}