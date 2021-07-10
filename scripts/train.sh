RASA_VERSION=$(./lookup_env.sh RASA_VERSION)

docker run --rm \
           --user "$(id -u):$(id -g)" \
           -v $(pwd):/app \
           rasa/rasa:$RASA_VERSION-full train
