# https_redirecter

This is a simple Docker launch script to start a container that will
redirect HTTP (port 80) to HTTPS (port 443) via a 302 redirect.

It uses the official [Apache image](https://hub.docker.com/_/httpd/),
with no separate Dockerfile.

To use it, just run the `launch.sh` script from this directory.  It
will bind to port 80 and redirect requests to the same host, so you
should have something listening on port 443.
