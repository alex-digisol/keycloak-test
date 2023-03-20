up:
	docker compose up -d --build

down:
	docker compose down -v

restart:
	docker compose down -v && docker compose up -d --build

add_admin:
	docker exec local_keycloak \
		/opt/jboss/keycloak/bin/add-user-keycloak.sh \
		-u admin \
		-p admin \
	&& docker restart local_keycloak