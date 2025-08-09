## 環境構築方法

### 環境構築
docker compose build --no-cache

docker compose run --rm web gem install rails

docker compose up -d

### DB環境構築
docker compose exec web rails db:create

docker compose exec web rails db:migrate

docker compose cp db/seeds.rb web:/rails/db/seeds.rb

docker compose exec web rails db:seed

### tailswindcssのインストール
docker compose run --rm web rails javascript:install:esbuild

docker compose run --rm web rails css:install:tailwind

docker compose down

docker compose build --no-cache

docker compose up -d

http://localhost:3000/books にアクセス

