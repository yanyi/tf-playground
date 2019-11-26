# Terraform Playground

This is a repository that is a playground for learning and exploring
[Terraform](https://www.terraform.io/).

## How to Use

### Dependencies

1. [Terraform CLI](https://www.terraform.io/downloads.html)

### Applying

Go into the individual provider's folder and modify the
`terraform.tfvars.example` file:

```sh
$ cp terraform.tfvars.example terraform.tfvars
$ vi terraform.tfvars
...
```

Run `terraform apply` to apply the configured infrastructure:

```sh
$ terraform apply

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:
...
```

### Destroying

To remove the infrastructure, in the individual provider's directory, run
`terraform destroy`:

```sh
$ terraform destroy
Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.
...
```

## Documentation

[Terraform Documentation](https://www.terraform.io/docs/index.html)
