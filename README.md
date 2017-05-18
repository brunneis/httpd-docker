# Apache HTTP Server (httpd)
Docker image for httpd on Centos 7.

## Getting the image
### Local build
`docker build -t httpd-centos .`

### Docker Hub
`docker pull brunneis/httpd-centos`

## Run the container
### Local build
`docker run -id --name httpd-centos -p 80:80 -v $(pwd)/local_shared_dir:/opt/httpd/htdocs:Z httpd-centos`

### Docker Hub
`docker run -id --name httpd-centos -p 80:80 -v $(pwd)/local_shared_dir:/opt/httpd/htdocs:Z brunneis/httpd-centos`