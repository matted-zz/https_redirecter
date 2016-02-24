# https_redirecter

This is a simple Docker launch script to start a container that will
redirect HTTP (port 80) to HTTPS (port 443) via a 302 redirect.

It uses the official [Apache image](https://hub.docker.com/_/httpd/),
with no separate Dockerfile.

To use it, just run the `launch.sh` script from this directory.  It
will bind to port 80 and redirect requests to the same host, so you
should have something listening on port 443.

### Update

I added a minimal Dockerfile for extra convenience in some cases.
There is an automated build hooked to this repository
[here](https://hub.docker.com/r/matted/https-redirecter/).  To use it,
run:

    docker run -d -p 80:80 matted/https-redirecter
