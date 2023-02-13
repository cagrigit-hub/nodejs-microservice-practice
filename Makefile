dbc:
	docker build -t cakitomakito/comments -f ./comments/Dockerfile.dev ./comments
hpc:
	docker push cakitomakito/comments 

dbe:
	docker build -t cakitomakito/event-bus -f ./event-bus/Dockerfile.dev ./event-bus
hpe:
	docker push cakitomakito/event-bus

dbm:
	docker build -t cakitomakito/moderation -f ./moderation/Dockerfile.dev ./moderation
hpm:
	docker push cakitomakito/moderation

dbq:
	docker build -t cakitomakito/query -f ./query/Dockerfile.dev ./query
hpq:
	docker push cakitomakito/query

dbp:
	docker build -t cakitomakito/posts -f ./posts/Dockerfile.dev ./posts
hpp:
	docker push cakitomakito/posts

dbcl:
	docker build -t cakitomakito/client -f ./client/Dockerfile.dev ./client
hpcl:
	docker push cakitomakito/client


kapply:
	kubectl apply -f ./infra/k8s