RASA_VERSION=$(./lookup_env.sh RASA_VERSION)
RASA_TOKEN=$(./lookup_env.sh RASA_TOKEN)

docker run -d \
           --user "$(id -u):$(id -g)" \
           -v $(pwd):/app \
           -p 5005:5005 \
           rasa/rasa:$RASA_VERSION-full run --enable-api --auth-token $RASA_TOKEN 
