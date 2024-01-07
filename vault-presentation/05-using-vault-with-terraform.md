layout: true
class: w-60
background-image: url(../../assets/images/backgrounds/HashiCorp-Content-bkg.png)
background-size: cover
name: terraform-vault

## Using Vault with Terraform

.overlay-image[![](./assets/images/vault-presentation/terraform-example-1.png)]
- Terraform requests an AWS credential from Vault.

???
Terraform can use Vault as a credential provider, allowing it to request credentials from Vault.
--
.overlay-image[![](./assets/images/vault-presentation/terraform-example-2.png)]
- Vault creates a new set of credentials on AWS with the desired access policy.

???
Vault can then generate a set of dynamic credentials on AWS with the desired access policy.
--
- Vault returns the credentials to Terraform.
.overlay-image[![](./assets/images/vault-presentation/terraform-example-3.png)]

???
Vault then returns these newly generated credentials to Terraform.
--
- Terraform uses the credentials to provision resources using its AWS Provider.
.overlay-image[![](./assets/images/vault-presentation/terraform-example-4.png)]

???
This allows Terraform to provision resources in AWS without having to store or manage any credentials itself.
