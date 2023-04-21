### Apply Terragrunt file at once

```bash
terragrunt apply-all --terragrunt-non-interactive -auto-approve
```

### Apply Terragrunt file one by one

```bash
terragrunt apply --terragrunt-non-interactive -auto-approve --terragrunt-working-dir dev
```