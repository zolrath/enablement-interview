layout: true
class: img-right
background-image: url(../../assets/images/backgrounds/HashiCorp-Content-bkg.png)
background-size: cover
name: what-is-vault

## What is Vault?
![](./assets/images/vault-presentation/vault-example.jpg)

- Identity-based secrets and encryption management system.

???

### What is Vault?
Vault is an identity-based secrets and encryption management system, and this means that you can use it to -
--
- Securely store and control access to secrets such as API keys, passwords, certificates, encryption keys and more.

???

### Store keys, passwords, certificates, etc.
Store and control access to secrets such as API keys, passwords, TLS certificates, encryption keys and more.

In many organizations, secrets like these are stored in source control, spread across many different applications on many servers, on developer machines or other insecure locations.

This can be a security risk and complicates updating secrets when they change.

By storing the secrets in Vault instead, the risk of compromise is reduced and updating secrets is simplified.
--
- Generate dynamic, short-lived credentials for various cloud providers, including AWS.

???

### Dynamic credentials
But Vault isn't just for static secrets, it can also generate dynamic credentials for various cloud providers, including AWS.

This allows you to give your applications access to AWS resources without having to store long-lived credentials in your application code or configuration files, which can be a security risk.
