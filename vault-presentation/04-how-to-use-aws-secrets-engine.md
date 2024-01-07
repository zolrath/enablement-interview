layout: true
class: compact
background-image: url(../../assets/images/backgrounds/HashiCorp-Content-bkg.png)
background-size: cover
name: aws-secrets-engine

## AWS Secrets Engine
.right-code[
```json
vault write aws/roles/my-role \
        credential_type=iam_user \
        policy_document=-<<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "EC2DynamicCredentials",
      "Effect": "Allow",
      "Action": ["ec2:\*"],
      "Resource": ["\*"]
    }
  ]
}
EOF
```
]
- Register IAM roles with Vault, exposing an endpoint to retrieve credentials created with this IAM role.

???
In this example, we're creating a role called my-role.  
When users generate credentials using this role, Vault will create an IAM user with this specific policy.
--
- In this example, we're creating a role called `my-role` that has scoped access to all EC2 actions and resources.

???
Here we've created a role named `my-role` which can be used to generate credentials that have access to all EC2 actions and resources.
--
- We can now generate new credentials in the CLI with: `vault read aws/creds/my-role` but we can also use the API, UI, or Terraform Provider.

???
We can now generate credentials in any number of ways be that the Vault CLI, UI, API, or Terraform Provider.
In this example we generate new credentials by reading from `aws/creds/my-role`
The credentials can be requested a number of ways be that the Vault CLI, API or Terraform Provider.
