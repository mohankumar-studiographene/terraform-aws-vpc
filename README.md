# Purpose:

Create VPC [1], IGW [1].

## Variable Inputs:

#### REQUIRED

```
    - vpc_cidr  (ex: 10.0.0.0/20).
    - namespace (project name).
    - environment (ex: dev/prod).
```

#### OPTIONAL

```
instance_tenancy
  A tenancy option for instances launched into the VPC. Ex: default, dedicated, host.
  default     = default.

dns_hostnames_enabled:
  A boolean flag to enable/disable DNS hostnames in the VPC.
  default     = true.

dns_support_enabled:
  A boolean flag to enable/disable DNS support in the VPC.
  default     = true.

```

## Resources created:

1. VPC [1]
2. IGW [1]

## Resources naming convention:

```
- VPC name: namespace-environment
    ex: sg-dev

- IGW name: namespace-environment
    ex: sg-dev
```

# Steps to create the resources

1. Call the module from your tf code.
   (best: create a file named "vpc.tf", and call from there. You can create subnet, and other network resources in the same file)
2. Specifying Variable Inputs along the module call.

Example:

```
provider "aws" {
  region = "us-east-1"
}

module "main-vpc" {
  source      = "app.terraform.io/studiographene/vpc/aws"
  version     = "1.0.0"

  vpc_cidr    = "10.0.0.0/20"
  namespace   = "sg"
  environment = "dev"
}

```

3. Apply: From terminal run following commands.

```
terraform init
```

```
terraform plan
```

```
terraform apply
```

!! You have successfully a VPC !!

---

## OUTPUTS

```
vpc_id:
  The ID of the VPC

vpc_arn:
  The ARN of the VPC.

vpc_cidr_block:
  The primary IPv4 CIDR block of the VPC.

igw_id:
  IGW ID.

```
