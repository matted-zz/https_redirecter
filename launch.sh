#!/bin/bash
docker run -d -p 80:80 \
    -v `pwd`/.htaccess:/usr/local/apache2/htdocs/.htaccess \
    -v `pwd`/httpd.conf:/usr/local/apache2/conf/httpd.conf \
    --name https-redirecter \
    httpd:2.4

# docker run -d -p 80:80 --name https-redirecter matted/https-redirecter
