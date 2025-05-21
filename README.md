# aws-network-Kymani2
Commands to run:

We need terraform version 1.9.7 , for this you need to insall it if you do not have this version.

```
 brew install tfenv
 tfenv use 1.9.7
 tfenv install 1.8.1
 echo 'export PATH="$HOME/.tfenv/bin:$PATH"' >> ~/.zshrc
 source ~/.zshrc
 tfenv use 1.9.7
 terraform -version
 ```

```
source setup.sh kymani.tfvars
terraform plan -var-file kymani.tfvars
terraform apply -var-file kymani.tfvars
```

```
brew install pre-commit
pre-commit --version
brew install shellcheck
pre-commit run --all-files
```
