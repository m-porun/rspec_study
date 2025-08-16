require 'rails_helper'

RSpec.describe "Books", type: :system do
  before do
    driven_by(:rack_test)
  end

  describe "indexアクション" do
    it "本の一覧が表示される" do
    end

    it "個別の本の詳細リンクが機能する" do
    end

    it "新しい本の作成リンクが機能する" do
    end
  end

  describe "showアクション" do
    before do
      @book = Book.create!(title: "それから", author: "夏目漱石")
    end

    it "編集ページへのリンクが機能する" do
      # まずは詳細画面にアクセスしましょう!
      # 詳細画面のpathはbook_path(@book)です

      # 次に「編集」リンクをクリックします
      # リンクなので、click_linkでアクセスすることができます

      # 最後に、現在の画面が編集画面か確認します（編集画面はedit_path(@book)です）
    end

    it "一覧ページへ戻るリンクが機能する" do
      # 自力で挑戦してみよう！
    end
  end

  describe "newアクション" do
    it "新規作成フォームが表示される" do
    end

    it "一覧ページへ戻るリンクが機能する" do
    end
  end

  describe "editアクション" do
    before do
      @book = Book.create!(title: "それから", author: "夏目漱石")
    end

    it "編集フォームが表示される" do
      # 編集画面に遷移しましょう(編集画面のpathはedit_path(@book))

      # 自力で挑戦してみましょう！
    end
  end

  describe "createアクション" do
    context "有効なデータの場合" do
      it "新しい本が正常に作成される" do
      end
    end

    context "無効なデータの場合" do
      it "タイトルが空の場合でも作成される（バリデーションなし）" do
        # 新規作成画面へ遷移する(new_book_path)

        # 入力フォームで空白を入力するようにする

        # ボタンをクリックして、DBのデータが1つ増えていることを確認する

        # 作成に成功するため詳細ページに移動
        # expect(page).to have_current_path(book_path(Book.last))
      end
    end
  end

  describe "updateアクション" do
    before do
      @book = Book.create!(title: "それから", author: "夏目漱石")
    end

    context "有効なデータの場合" do
      it "本の情報が正常に更新される" do
        # 編集画面に遷移しましょう(編集画面のpathはedit_path(@book))

        # フォームにタイトルと著者名と入力しましょう（タイトル名と著者名は任意です）

        # 更新ボタンをクリックしましょう（「Update Book」）

        # 更新が成功したことを確認しましょう

        # データベースでも更新されていることを確認
        # 3行下のコメントアウトを外してください
        # @book.reload
        # expect(@book.title).to eq("入力したタイトル名を入れてください")
        # expect(@book.author).to eq("入力した著者名を入れてください")
      end
    end

    context "無効なデータの場合" do
      it "タイトルを空にしても更新される（バリデーションなし）" do
        # 自力で挑戦してみましょう！
      end
    end
  end
end