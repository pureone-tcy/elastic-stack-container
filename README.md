# ELK Stack
- コンテナに、ELK Stack (v7.2) の環境を構築するプロジェクト
- `Logstash File input plugin` より、`logstash/pipeline/input/` 配下のjsonファイルをElasticsearchへ自動的にプッシュする
- Kibanaで可視化して遊ぶ

## Run
```bash
$ docker-compose up -d
// 10分〜30分くらい掛かります
```

- Access Kibana http://localhost:5601/

## Config
- `logstash/pipeline/logstash.conf`
- `logstash/pipeline/template/index_template.json`

## Add Data / Update Data
- `logstash/pipeline/input/*.json`

## Stop
```bash
$ docker-compose stop 
```

## Delete
```bash
$ docker-compose down
```

```bash
$ docker images
REPOSITORY                                      TAG                 IMAGE ID
docker.elastic.co/logstash/logstash             7.2.0               4470777ac65e
docker.elastic.co/kibana/kibana                 7.2.0               3e581a516dcd
docker.elastic.co/elasticsearch/elasticsearch   7.2.0               0efa6a3de177
$ docker rmi IMAGE ID
```