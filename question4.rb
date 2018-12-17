puts "最初はグー、じゃんけん...
[0]:グー
[1]:チョキ
[2]:パー"

# 変数や配列の定義
janken =["グー","チョキ","パー"]
user_hand = gets.to_i
pc_hand = rand(3)

puts "あなたの手:#{janken[user_hand]}, わたしの手:#{janken[pc_hand]}"

# あいこの場合 "あいこで"と表示させたあともう一度じゃんけんをさせる
while (user_hand == pc_hand) do
  puts "あいこで
  [0]:グー
  [1]:チョキ
  [2]:パー"
  user_hand = gets.to_i
  pc_hand = rand(3)
  puts "あなたの手:#{janken[user_hand]}, わたしの手:#{janken[pc_hand]}"
end
  # 勝ち負けの判定
if (user_hand == 2 && pc_hand == 0) ||
      (user_hand == 0 && pc_hand == 1) ||
      (user_hand == 1 && pc_hand == 2) then
    puts "あなたの勝ちです"
else
    puts "あなたの負けです"
end