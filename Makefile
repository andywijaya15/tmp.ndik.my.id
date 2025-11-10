# ===============================
# Makefile for tmp-files project
# ===============================

# Docker Compose files
DEV_COMPOSE = compose.dev.yaml
PROD_COMPOSE = compose.prod.yaml

# ===============================
# Development
# ===============================
dev-up:
	@echo "🚀 Starting development environment..."
	docker compose -f $(DEV_COMPOSE) up -d --build

dev-down:
	@echo "🛑 Stopping development environment..."
	docker compose -f $(DEV_COMPOSE) down

dev-logs:
	docker compose -f $(DEV_COMPOSE) logs -f

# ===============================
# Production
# ===============================
prod-up:
	@echo "🚀 Starting production environment..."
	docker compose -f $(PROD_COMPOSE) up -d --build

prod-down:
	@echo "🛑 Stopping production environment..."
	docker compose -f $(PROD_COMPOSE) down

prod-logs:
	docker compose -f $(PROD_COMPOSE) logs -f