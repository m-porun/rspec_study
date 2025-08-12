## 環境構築方法
Dockerでの環境構築コマンドになります。
詳しいコマンドの意味とかは省略しています。
もしコマンドの意味等、気になる方いたら聞いていただけたら、お答えいたします
### Dockerの環境構築
```
docker compose build --no-cache
docker compose run --rm web gem install rails
docker compose up -d
```

### seedデータの投入
```
docker compose cp db/seeds.rb web:/rails/db/seeds.rb
docker compose exec web rails db:seed
```

http://localhost:3000/books にアクセス

### テスト実行確認
- systemSpecができるかどうか確認
```
docker compose exec web bash -c "RAILS_ENV=test bundle exec rspec"
```
- errorが出ず、正常終了したら成功です
  - 黄色の*のマークはpending（テストをスキップしている状態）ですので、それは出ていても問題ありません。
  - <img width="829" height="288" alt="image" src="https://github.com/user-attachments/assets/a4f6e011-061f-4f36-a6db-52ba2624ceff" />

