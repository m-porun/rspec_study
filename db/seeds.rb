# 本のダミーデータを作成
books_data = [
  { title: "吾輩は猫である", author: "夏目漱石" },
  { title: "坊っちゃん", author: "夏目漱石" },
  { title: "こころ", author: "夏目漱石" },
]

books_data.each do |book_attrs|
  Book.create!(book_attrs)
end

puts "#{Book.count}冊の本の作成完了"