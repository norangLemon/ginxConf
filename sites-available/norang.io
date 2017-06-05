server {
  listen 80;
  server_name norang.io;
  location / {
    return 301 https://$host$request_uri;
  }
}
server {
  listen 443 ssl http2;
  server_name norang.io;

  ssl on;
  ssl_certificate /etc/letsencrypt/live/norang.io/fullchain.pem;
  ssl_certificate_key /etc/letsencrypt/live/norang.io/privkey.pem;
  ssl_trusted_certificate /etc/letsencrypt/live/norang.io/chain.pem;
  location / {
    root /home/norang/norang.io/public;
    index index.html;
  }
}
