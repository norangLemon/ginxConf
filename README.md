nginx.conf
---

###  심링크 만들기

* 기본 설정 파일
```
sudo ln -sf "$PWD/nginx.conf" /etc/nginx/nginx.conf
sudo ln -sf "$PWD/ssl.conf" /etc/nginx/ssl.conf
```

* 사용 가능 사이트
```
sudo ln -sf "$PWD/sites-available" /etc/nginx/sites-available
```

* 포워드 프록시 설정
```
sudo ln -sf "$PWD/virtual.conf" /etc/nginx/conf.d/virtual.conf
```


### 사이트 활성화하기

* [TARGET_CONF]를 활성화
```
sudo ln -sf /etc/nginx/sites-available/[TARGET_CONF] /etc/nginx/sites-enabled/[TARGET_CONF]
```

* 사용 가능한 전체를 활성화
```
sudo ln -sf /etc/nginx/sites-available/* /etc/nginx/sites-enabled/
```


### 문법 검사
```
sudo nginx -t -c /etc/nginx/nginx.conf
```


### 재시작
```
sudo service nginx reload
```


[보안 검사](https://www.ssllabs.com/ssltest/)
[References](http://nginx.org/en/docs/)
