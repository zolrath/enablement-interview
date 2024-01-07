layout: true
background-image: url(../../assets/images/backgrounds/HashiCorp-Content-bkg.png)
background-size: cover
name: agenda

![:scale 90%; padding-top: 40px](./assets/images/vault-presentation/secrets-intro.png)
???
Secrets are a fundamental part of any application, and they need to be kept secure.  
But its easy for this to become a mess, with secrets being stored in source control, or in insecure locations.  
We can do better.
--

![:scale 90%; padding-top: 40px](./assets/images/vault-presentation/vault-intro.png)

???
First we'll start off with an introduction to Vault, a secure secrets management tool.  
This allows you to keep your secrets out of source control and other insecure locations while still making them available to your applications.
--
![:scale 90%](./assets/images/vault-presentation/aws-intro.png)

???

And then we'll look at how Vault can integrate with AWS to generate credentials on demand.
--
![:scale 90%](./assets/images/vault-presentation/terraform-intro.png)

???
Finally we'll see how Terraform can make use of these dynamic credentials to provision resources in AWS.
