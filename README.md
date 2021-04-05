# terraform-google-compute_instance

This module is used to create compute instances (and only compute instances) using

## Usage

See the [simple](https://github.com/terraform-google-modules/terraform-google-vm/tree/master/examples/compute_instance/simple) for a usage example.

## Testing


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name_prefix | Machine prefix. | `string`| `[]` | yes |
| amount | Hostname of instances | `string` | `""` | no |
| machine_type | Instance template self\_link used to create compute instances | `any` | n/a | yes |
| zone | Network to deploy to. Only one of network or subnetwork should be specified. | `string` | `""` | no |
| image | Number of instances to create. This value is ignored if static\_ips is provided. | `string` | `"1"` | no |
| subnetwork | Region where the instances should be created. | `string` | `null` | no |
|tags | List of static IPs for VM instances | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| available\_zones | List of available zones in region |
| instances\_details | List of all details for compute instances |
| instances\_self\_links | List of self-links for compute instances |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
