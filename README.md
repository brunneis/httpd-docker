# Apache HTTP Server (httpd)
Docker image for Apache HTTP server on Centos 7.

## Getting the image
### Local build
`docker build -t brunneis/httpd-centos .`

### Docker Hub
`docker pull brunneis/httpd-centos`

## Run the container
`docker run -id --name httpd-centos -p 80:80 -v $(pwd)/local_shared_dir:/opt/httpd/htdocs:Z brunneis/httpd-centos`
