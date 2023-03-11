docker run -v /var/run/docker.sock:/var/run/docker.sock:ro -v /etc/localtime:/etc/localtime:ro --name dcw-exporter -e TOKEN=9fvaKTqMrx8Zw4 MAIN_DCW=192.168.2.57:3124 palleri/dcw-exporter:latest
