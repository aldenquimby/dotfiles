# usage: docker_bash redis
docker_bash() {
  docker exec -it $1 bash
}

# usage: dv_start rmsfe
dv_start() {
  # docker-compose pull --include-deps $1 &&
  export TAG=master && docker-compose up -d --no-deps --remove-orphans --force-recreate $1
}

# to STOP a container: docker-compose stop haproxy
