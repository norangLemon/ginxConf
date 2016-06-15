nginx.conf
========
* 심링크 만들기
```
sudo ln -sf "$PWD/nginx.conf" /etc/nginx/nginx.conf
sudo ln -sf "$PWD/virtual.conf" /etc/nginx/conf.d/virtual.conf
```

* 문법 검사
```
sudo nginx -t -c /etc/nginx/nginx.conf
```

* 재시작
```
sudo service nginx reload
```

[References](http://nginx.org/en/docs/)
