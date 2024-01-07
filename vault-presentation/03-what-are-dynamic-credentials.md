layout: true
class: col-2
background-image: url(../../assets/images/backgrounds/HashiCorp-Content-bkg.png)
background-size: cover
name: dynamic-credentials

## What are Dynamic Credentials?

- Credentials that are created on-demand and have a limited lifetime.

???
Dynamic Credentials are credentials are generated on-demand as users or services need them.
--
- More secure than static, long-lived credentials as they do not exist until they are needed.

???
Every time you request these credentials, Vault will generate a unique set of credentials with a limited lifetime.

--
- Enable fine-grained access control as they can be scoped to a specific resource, action, or time period.

???
This also allows you to scope the credentials to a specific resource, action, or time period.  
These credentials can be revoked at any time without impacting other services as they are not shared.
