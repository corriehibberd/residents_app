.PHONY: up
up:
	docker-compose up

.PHONY: down
down:
	docker-compose down

.PHONY: psql
psql:
	docker-compose exec db psql -d residents_development -U postgres

.PHONY: dev-bash
dev-bash:
	docker-compose exec web bash

DB_TARGETS = db-migrate db-rollback

.PHONY: $(DB_TARGETS)
$(DB_TARGETS): %:;
	docker-compose exec web bin/rake $(subst -,:,$@)
