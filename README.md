# docker-compose

An image to run `docker-compose` on a docker host and authenticate with a private container registry using a JSON service account file.

## Environment Variables

* `AUTH_URL` - URL of private registry, defaults to https://gcr.io

## Running a container

```
docker run \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v "$PWD:/compose/$PWD" \
    -w="/compose$PWD" \
    tmannherz/docker-compose \
    up
```

It is assumed the the service account JSON file is called `service-account.json` and it's located within the context directory where the container is run.

`docker-compose` version in the image is 1.14.0.
