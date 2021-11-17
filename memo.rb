require "csv"
 
    puts "1(新規でメモを作成) 2(既存のメモ編集する)"
 
    memo_type = gets.to_s
    memo_type = memo_type.chomp
if memo_type=="1" then
    puts "拡張子を除いたファイル名を入力してください"
    title_type = gets.to_s
    title_type = title_type.chomp    
    title_type = title_type + ".csv"    
 CSV.open(title_type, 'w') do |csv|
    puts "メモしたいことを教えてください"
    puts "完了したら、Ctrl ＋ Dで保存されます"
    input = $stdin.readlines
    csv <<  input
    end

 elsif memo_type=="2" then
     puts "編集したいメモの名前を拡張子なしで教えてください"
    title_type = gets.to_s
    title_type = title_type.chomp    
    title_type = title_type + ".csv"   
     CSV.open(title_type, 'a') do |csv|
     puts "追記したい内容を教えてください"
    input = $stdin.readlines
    csv <<  input
    
    end
else
     puts "1か２を入力してください"
    end
    
    
    

