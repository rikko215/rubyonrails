def get_days(year, month)
    #変数の定義
    uruu_days = 29
    month_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

    #2月のときのみ閏年判定の上、日数取得
    if (month == 2) then
      # 2月で、年が4で割りきれる場合
      if (year % 4 == 0) then
        if (year % 100 == 0) && (year % 400 != 0)
          days = month_days[month - 1]
        else
          days = uruu_days
        end
      #2月だが、年が4で割り切れない場合
      else
        days = month_days[month - 1]
      end
    #2月以外の月は全て配列から日数を取得
    else
      days = month_days[month - 1]
    end
    return days
  end

  puts "年を入力してください："
  year = gets.to_i
  puts "月を入力してください："
  month = gets.to_i

  days = get_days(year, month)
  puts "#{year}年#{month}月は#{days}日間あります"
