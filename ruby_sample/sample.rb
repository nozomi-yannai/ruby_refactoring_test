def review_input
    while true
        puts "1~5で評価を入力してください。"
        point = gets.to_i
        if (1..5).include?(point)
            puts "コメントを入力してください"
            comment = gets.chomp
            puts "ポイント：#{point}　コメント：#{comment}で登録しました"
            post = "ポイント：#{point}　コメント：#{comment}"
            File.open("data.txt", "a") do |file|
                file.puts(post)
            end
            break
        else
            puts "数字を入力してください"
        end
    end
end    

def review_list
    File.open("data.txt", "r") do |file|
        file.each_line do |line|
            puts line
        end
    end
end

while true
    puts "実施したい処理を選択してください"
    puts "1:評価ポイントとコメントを入力する"
    puts "2:今までの結果を確認する"
    puts "3:終了する"
    num = gets.to_i

    case num
    when 1
        puts review_input
    when 2
        puts review_list
    when 3
        puts "終了します"
        break
    else
        puts "1~3の数字で入力してください。"
    end
end
