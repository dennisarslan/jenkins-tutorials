#docker build -t denbuntu:0.0.1 .
docker build -t registry/denbuntu:0.0.1 .
docker run -d -t -p22 registry/denbuntu:0.0.1
