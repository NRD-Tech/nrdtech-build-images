# NRD Tech Build Images
Docker images used as build environments in CI/CD Pipelines for NRD Tech projects

## Build and Deploy
```
# Bitbucket Python 3.10
docker login
docker buildx build \
    --platform linux/amd64 \
    -t nrdtech/bitbucket-python310-build-image:1.0 \
    -t nrdtech/bitbucket-python310-build-image:latest \
    -f Dockerfile.bitbucket.python310 \
    .
docker push nrdtech/bitbucket-python310-build-image:1.0
docker push nrdtech/bitbucket-python310-build-image:latest

# Bitbucket React
docker login
docker buildx build \
    --platform linux/amd64 \
    -t nrdtech/bitbucket-react-build-image:1.0 \
    -t nrdtech/bitbucket-react-build-image:latest \
    -f Dockerfile.bitbucket.react \
    .
docker push nrdtech/bitbucket-react-build-image:1.0
docker push nrdtech/bitbucket-react-build-image:latest

```