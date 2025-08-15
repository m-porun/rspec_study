# RSpec test commands
.PHONY: test system-test all-test test-coverage
# テスト環境での全テスト実行
all-test:
	docker compose exec web bash -c "RAILS_ENV=test bundle exec rspec"

# システムテスト（テスト環境）
system-test:
	docker compose exec web bash -c "RAILS_ENV=test bundle exec rspec spec/system"
