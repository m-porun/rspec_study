require 'rails_helper'

RSpec.describe "Books", type: :system do
  before do
    driven_by(:rack_test)
  end

  describe "createアクション" do
    it "新しい本が正常に作成される" do
      visit new_book_path

      expect(page).to have_content("新しい本の作成")
      
      fill_in "Title", with: "テスト本のタイトル"
      fill_in "Author", with: "テスト著者"

      expect {
        click_button "Create Book"
      }.to change(Book, :count).by(1)

      expect(page).to have_content("本が作成されました。")
      expect(page).to have_content("テスト本のタイトル")
      expect(page).to have_content("テスト著者")
    end
  end
end