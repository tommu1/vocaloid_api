## ビルド実行
```
docker compose build
```

## データベース作成（docker-composeの起動コマンドで実行するとエラーになるので手動実行）
```
docker compose run --rm app rails db:create
```

## サーバー起動
```
docker compose up -d
```
