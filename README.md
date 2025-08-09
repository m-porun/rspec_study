## 環境構築方法

docker compose build --no-cache

docker compose run --rm web gem install rails

docker compose up -d

docker compose exec web rails db:create

docker compose exec web rails db:migrate

docker compose cp db/seeds.rb web:/rails/db/seeds.rb

docker compose exec web rails db:seed

http://localhost:3000/books にアクセス

