output "vpc_id" {
    value = "${module.vpc.aws_vpc.outputs.vpc_id}"
}

output "s3_id" {
    value = "${module.s3_bucket.outputs.s3_bucket_id}"
}