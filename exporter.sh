docker run -v /var/run/docker.sock:/var/run/docker.sock:ro -v /etc/localtime:/etc/localtime:ro --name dcw-exporter -e TOKEN=9fvaKTqMrx8Zw4 -e MAIN_DCW=192.168.2.57 palleri/dcw-exporter:latest
