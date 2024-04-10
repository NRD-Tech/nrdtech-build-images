# NRD Tech Python Build Image
This Docker image is used to do builds in Bitbucket and GitHub pipelines for Python projects

## Included
- AWS CLI
- Python 3.10
- Terraform 1.6.6

## Build and Deploy
```
docker login
docker build \
    -t nrdtech/python-build-image:1.0 \
    -t nrdtech/python-build-image:latest \
    .
docker push nrdtech/python-build-image:1.0
docker push nrdtech/python-build-image:latest

```