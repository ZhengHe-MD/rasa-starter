RASA_VERSION=$(./lookup_env.sh RASA_VERSION)

docker run --rm \
           --user "$(id -u):$(id -g)" \
           -v $(pwd):/app \
           --name action-server \
           rasa/rasa:$RASA_VERSION-full run actions -vv
