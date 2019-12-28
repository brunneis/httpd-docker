# Apache HTTP Server (httpd)
Docker image for Apache HTTP server on Centos 7.

## Getting the image
### Local build
`docker build -t brunneis/httpd .`

### Docker Hub
`docker pull brunneis/httpd`

## Run the container
`docker run -d -p 80:80 -v $(pwd)/data:/opt/httpd/htdocs brunneis/httpd`
