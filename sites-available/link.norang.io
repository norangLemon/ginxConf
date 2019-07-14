map $uri $redirect_dest {
  include /etc/nginx/redirects-map.conf;
  default https://norang.io;
}

server {
  listen 80;
  server_name link.norang.io;
  location / {
    return 301 $redirect_dest;
  }
}
