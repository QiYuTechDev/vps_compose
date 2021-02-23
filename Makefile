build:
	docker-compose build --no-cache

run:
	docker-compose up -d

clean:
	rm -rf data
	git chckout data/.gitignore
