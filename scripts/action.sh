RASA_VERSION=$(./scripts/lookup_env.sh RASA_VERSION)

docker run --rm \
           --user "$(id -u):$(id -g)" \
           -v $(pwd):/app \
           --name action-server \
           rasa/rasa:$RASA_VERSION-full run actions -vv --endpoints=endpoints-local.yml --credentials=credentials-local.yml
