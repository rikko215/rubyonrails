###レビュー管理アプリケーション
# メソッドの定義
    #レビューの投稿
    def post_review(a_posts)
        #変数の定義
        post = {}
        puts "ジャンルを入力してください："
        post [:gentre] = gets.chomp
        puts "タイトルを入力してください："
        post [:title]  = gets.chomp
        puts "感想を入力してください："
        post [:review] = gets.chomp

        # レビューの描画
        line   = "---------------------------"
        puts "#{line}"
        puts "ジャンル : #{post[:gentre]}\n#{line}"
        puts "タイトル : #{post[:title]}\n#{line}"
        puts "感想 :#{post[:review]}\n#{line}"

        # 引数で受け取った配列オブジェクトにpostを追加
        a_posts << post

        # postを追加した配列オブジェクトを返り値として返す
        return a_posts
    end

    #レビューの閲覧
    def read_reviews(a_posts)
        #リストの表示
        number = 0
        a_posts.each do |post|
            puts "[#{number}]：#{post[:title]}のレビュー"
            number += 1
        end
        puts "見たいレビューの番号を入力してください："
        choice = gets.to_i

        #レビューの取得
        post = a_posts[choice]

        # レビューの描画
        line   = "---------------------------"
        puts "#{line}"
        puts "ジャンル : #{post[:gentre]}\n#{line}"
        puts "タイトル : #{post[:title]}\n#{line}"
        puts "感想 :#{post[:review]}\n#{line}"
    end

    #プログラムの終了
    def end_program
        exit
    end

    #エラー処理
    def exception
        puts "入力された値は無効な値です"
    end

#配列オブジェクトpostsの生成
    posts = []

# メニュー画面を表示
while true do
    puts "レビュー数：#{posts.length}"
    puts "[0]レビューを書く"
    puts "[1]レビューを読む"
    puts "[2]アプリを終了する"
    choice = gets.to_i

    if choice == 0 then
        post_review(posts)
        elsif choice == 1 then
        read_reviews(posts)
        elsif choice == 2 then
        end_program
        else 
        exception
    end
end

