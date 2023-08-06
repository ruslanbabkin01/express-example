run:
	docker run -p 3000:80 -d --rm --name logsapp --env-file ./.env logs:env
stop:
	docker stop logs
