    /usr/local/go/bin/go test .
    docker build . -t ubuntu-bionic:8082/hello-world:v$BUILD_NUMBER
    docker login ubuntu-bionic:8082 -u admin -p admin && docker push ubuntu-bionic:8082/hello-world:v$BUILD_NUMBER && docker logout
