PROJECT_DIR="$1"

if [ -d "$PROJECT_DIR" ]; then
    echo "directory already exists"
    exit 1
else
    mkdir "$PROJECT_DIR" || exit 1
    echo "created directory \"$PROJECT_DIR\""
fi

echo "pulling docker image desm/rsg-react-on-rails:latest, this may take a while"
docker pull desm/rsg-react-on-rails:latest

echo "copying project files from docker container to \"$PROJECT_DIR\""
docker run --rm --user appserver --workdir /home/appserver/app desm/rsg-react-on-rails:latest \
    tar czf - . | tar xzf - -C "$PROJECT_DIR"

echo "running docker-compose up from the directory \"$PROJECT_DIR\""
cd "$PROJECT_DIR"
docker-compose up
