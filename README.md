# docker-nginx
Instructions and files for building Docker image with nginx.

Nginx is configured in the following way:
1. Endpoint '/1' serves the file 1.txt
2. Endpoint '/1' is protected with basic authentication (username/password: admin/123)
3. Root endpoint ('/') serves default nginx page without any authentication.
4. Endpoint '/1.txt' returns 403 error code.
