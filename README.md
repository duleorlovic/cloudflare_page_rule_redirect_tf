# Jitsi page rule redirect

Clone the template
```
# clone under different name
git clone git@github.com:duleorlovic/cloudflare_page_rule_redirect_tf.git
mv cloudflare_page_rule_redirect_tf jitsi.my-domain.com_cloudflare_page_rule_redirect_tf
cd jitsi.my-domain.com_cloudflare_page_rule_redirect_tf
```

Create subdomain with any values (eg A 192.0.2.1) for your target domain,
example `jitsi.my-domain.com`


Export variables or create tfvars file
```
# terraform.tfvars
# Token can be generated under https://dash.cloudflare.com/profile/api-tokens
# Enable Zone DNS:Edit and Page Rules: Edit
cloudflare_api_token="123..."
cloudflare_zone_id="456..."
cloudflare_target_domain="jitsi.my-domain.com"
cloudflare_redirect_url="https://meet.jit.si/moderated/123"
```

Run terraform
```
terraform init
terraform plan
terraform plan -auto-approve
```

Delete record
```
terraform destroy -auto-approve
```


