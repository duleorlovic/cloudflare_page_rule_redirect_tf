# Jitsi page rule redirect

Clone the template
```
# clone under different name
git clone git@github.com:duleorlovic/cloudflare_page_rule_redirect_tf.git my-app_cloudflare_page_rule_redirect_tf
cd my-app_cloudflare_page_rule_redirect_tf
```

Create subdomain with any values (eg A 192.0.2.1) for your target domain, example `jitsi.srb.in.rs`


Export variables or create tfvars file
```
# terraform.tfvars
cloudflare_api_token="123..."
cloudflare_zone_id="456..."
cloudflare_target_domain="jitsi.srb.in.rs"
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


