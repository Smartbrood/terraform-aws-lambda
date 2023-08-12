.PHONY: format docs clear validate

format:
	terraform fmt

docs: format
	terraform-docs markdown table --output-file README.md .

clear:
	find . -type d -name ".terragrunt-cache" -prune -exec rm -rf {} \; && \
	find . -type d -name ".terraform" -prune -exec rm -rf {} \; && \
	find . -type f -name "*.tfstate*" -prune -exec rm -rf {} \; && \
	find . -type f -name ".terraform.lock.hcl" -prune -exec rm -rf {} \; && \
	rm -rf ./plugin-cache

validate:
	terraform init
	terraform validate