.PHONY: help web up

help: ## Show help
	@echo "Usage: make <target>"
	@echo ""
	@echo "Available targets:"
	@awk '/^[a-zA-Z_-]+:.*?## / { \
		printf "\033[36m%-30s\033[0m %s\n", $$1, $$2 \
	}' $(MAKEFILE_LIST)


# Define "web" como uma regra para executar o contêiner da web na porta 8000.
web: ## Run web container on port 8000
	docker-compose up --build web


# Define "up" como uma regra para executar o contêiner da web na porta 8000.
# Acho que este é redundante mas não sei, acho que executa a mesma tarefa que o alvo "web".
up: ## Run web container on port 8000
	docker-compose up --build
