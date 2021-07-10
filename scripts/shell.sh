RASA_VERSION=$(./scripts/lookup_env.sh RASA_VERSION)

docker run -it \
           --rm \
           --user "$(id -u):$(id -g)" \
           -v $(pwd):/app \
           -p 5005:5005 \
           rasa/rasa:$RASA_VERSION-full shell --endpoints=endpoints-local.yml --credentials=credentials-local.yml --debug
