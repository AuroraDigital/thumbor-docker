# thumbor-docker

Public Image:

`auroradigital/thumbor:latest`
`auroradigital/thumbor:amd64`
`public.ecr.aws/k2c8a7b0/thumbor:latest`

Build:
```
docker build -t auroradigital/thumbor:amd64 . --platform=linux/amd64
```

Build for AWS App Runner:

```
docker buildx build --platform=linux/amd64 -t <tag> .
```
