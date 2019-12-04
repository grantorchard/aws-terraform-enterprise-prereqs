output "vpc_id" {
    value = "${module.vpc.aws_vpc.this.id}"
}