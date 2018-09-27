def input_score(posts,total)
  post = {}
  puts "生徒の名前を入力してください："
  post[:name] = gets.chomp
  puts "得点を入力してください："
  post[:score] = gets.to_i
  puts "得点を入力しますか：[0]yes [1]no？"
  @choice = gets.to_i
  posts << post
  total = total + post[:score]
end

def show_all_score(posts,total)
  line = "--------------------------"
  puts line
  posts.each do |post|
    puts "#{post[:name]} : #{post[:score]}"
  end
  puts line
  average = total/posts.length
  puts "平均得点　：　#{average}"
end



puts "得点を入力しますか：[0]yes [1]no？"

choice = gets.to_i

posts = []
total = 0

while choice == 0 do
input_score(posts,total)
choice = @choice
end

if choice == 1
show_all_score(posts,total)
end
