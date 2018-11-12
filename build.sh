
set -e

docker build -t tftest .
#docker run  --rm tftest
docker run -it --rm tftest bash
