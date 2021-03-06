# 課題の回答は このファイル をご利用下さい。
# 回答の出力を確認される際は，「ruby main.rb」をターミナルから実行して下さい。

def q1
  names = ["田中", "佐藤", "佐々木", "高橋"]

  # 以下に回答を記載
  names << "斎藤"
  puts names

end

def q2
  array1 = ["dog", "cat", "fish"]
  array2 = ["bird", "bat", "tiger"]

  # 以下に回答を記載
  puts array1 + array2

end

def q3
  numbers = [1, 5, 8, 10, 2, 3, 2, 3, 3, 1, 4, 5, 9]

  # 以下に回答を記載
  puts numbers.count(3)


end

def q4
  sports = ["サッカー", "フットサル", nil, "野球", "バスケ", nil, "バレー"]

  # 以下に回答を記載
  sports.compact!
  # 以下は変更しないで下さい
  p sports
end

def q5
  array1 = []
  array2 = [1, 5, 8, 10]

  # 以下に回答を記載
  puts array1.empty?
  puts array2.empty?

end

def q6
  numbers1 = [1, 2, 3, 4, 5]

  # 以下に回答を記載
  numbers2 = numbers1.map{|x| x * 10}
  puts numbers2

end

def q7
  array = ["1", "2", "3", "4", "5"]

  # 以下に回答を記載
  array.map!(&:to_i)
  # 以下は変更しないで下さい
  p array
end

def q8
  programming_languages = %w(ruby php python javascript)

# 以下に回答を記載
  programming_languages.map!(&:capitalize)
  upper_case_programming_languages = programming_languages.map(&:upcase)

  # 以下は変更しないで下さい
  p programming_languages
  p upper_case_programming_languages


end

def q9
  names = ["田中", "佐藤", "佐々木", "高橋"]

  # 以下に回答を記載
  names.each.with_index(1) do |user,i|
    puts "会員No.#{i} #{user}さん"
  end

end

def q10
  foods = %w(いか たこ うに しゃけ うにぎり うに軍艦 うに丼)

  # 以下に回答を記載
  foods.each do |food|
    puts food.include?("うに") ? "好物です" : "まあまあ好きです"
  end
end

def q11
  sports = ["サッカー", "バスケ", "野球", ["フットサル", "野球"], "水泳", "ハンドボール", ["卓球", "サッカー", "ボルダリング"]]

  # 以下に回答を記載
  puts "ユーザーの趣味一覧"
  new_sports = sports.flatten.uniq
  new_sports.each.with_index(1) do |new_sport,i|
    puts "No.#{i} #{new_sport}"
  end
end

def q12
  data = { user: { name: "satou", age: 33 } }

  # 以下に回答を記載
  data1 = data[:user]
  puts data1[:name]

end

def q13
  user_data = { name: "神里", age: 31, address: "埼玉" }
  update_data = { age: 32, address: "沖縄" }

  # 以下に回答を記載
  puts user_data.merge(update_data)

end

def q14
  data = { name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com" }

  # 以下に回答を記載
  puts data.keys

end

def q15
  data1 = { name: "saitou", hobby: "soccer", age: 33, role: "admin" }
  data2 = { name: "yamada", hobby: "baseball", role: "normal" }

  # 以下に回答を記載
  puts "実行結果"
  puts data1.include?(:age)? "OK" : "NG"
  puts "実行結果"
  puts data2.include?(:age)? "OK" : "NG"
end

def q16
  users = [
    { name: "satou", age: 22 },
    { name: "yamada", age: 12 },
    { name: "takahashi", age: 32 },
    { name: "nakamura", age: 41 }
  ]

  # 以下に回答を記載
  users.each do |user|
    puts "私の名前は#{user[:name]}です。年齢は#{user[:age]}です。"
  end
end

class UserQ17
  # 以下に回答を記載

  def initialize(**params)
    @name = params[:name]
    @age = params[:age]
    @gender = params[:gender]
  end

  def info
    puts <<~TEXT
     ```
     名前：#{@name}
     年齢：#{@age}
     性別：#{@gender}
    TEXT
  end
end

def q17
  # ここは変更しないで下さい（ユーザー情報は変更していただいてOKです）
  user1 = UserQ17.new(name: "神里", age: 32, gender: "男")
  user2 = UserQ17.new(name: "あじー", age: 32, gender: "男")

  user1.info
  puts "-------------"
  user2.info
end

class UserQ18
  # 以下に回答を記載
  def initialize(**params)
    @name = params[:name]
    @age = params[:age]
  end

  def introduce
    @age > 11 ? "こんにちは，#{@name}と申します。宜しくお願いいたします。" : "はいさいまいど〜，#{@name}です！！！"
  end
end

def q18
  # ここは変更しないで下さい
  user1 = UserQ18.new(name: "あじー", age: 32)
  user2 = UserQ18.new(name: "ゆたぼん", age: 10)

  puts user1.introduce
  puts user2.introduce
end

class Item
  # 以下を修正して下さい
  attr_reader :name

  def initialize(**params)
    @name = params[:name]
  end
end

def q19
  # ここは変更しないで下さい
  book = Item.new(name: "ゼロ秒思考")
  puts book.name
end

class UserQ20
  #以下に回答を記載
  attr_reader :name,:age

  def initialize(**params)
    @name = params[:name]
    @age = params[:age]
  end

end

class Zoo
  # 以下に回答を記載

  def initialize(**params)
    @name = params[:name]
    @entry_fee = params[:entry_fee]
  end

  def info_entry_fee(user)
    @name = user.name
    @age = user.age
    @infant =  @entry_fee[:infant]
    @children = @entry_fee[:children]
    @adult = @entry_fee[:adult]
    @senior = @entry_fee[:senior]

    price_by_age = case @age
    when 0..5 then @infant
    when 6..12 then @children
    when 13..64 then @adult
    else @senior
    end

    puts "#{@name}さんの入場料金は#{price_by_age}円です。"
    #　　　　　　↑　↑　↑
    # if  @age >= 0 &&  @age<= 5
    #   puts "#{@name}さんの入場料金は#{@infant}円です。"
    # elsif @age >= 6 && @age <= 12
    #   puts "#{@name}さんの入場料金は#{@children}円です。"
    # elsif @age >= 13 && @age <= 64
    #   puts "#{@name}さんの入場料金は#{@adult}円です。"
    # else @age >= 65 && @age <= 120
    #   puts "#{@name}さんの入場料金は#{@senior}円です。"
    # end
  end

end


def q20
  # ここは変更しないで下さい（動物園・ユーザー情報は変更していただいてOKです）
  zoo = Zoo.new(name: "旭山動物園", entry_fee: { infant: 0, children: 400, adult: 800, senior: 500 })

  users = [
    UserQ20.new(name: "たま", age: 3),
    UserQ20.new(name: "ゆたぼん", age: 10),
    UserQ20.new(name: "あじー", age: 32),
    UserQ20.new(name: "ぎん", age: 108)
  ]

   users.each do |user|
      zoo.info_entry_fee(user)
   end

  #  users = [
  #   {name: "たま", age: 3},
  #   {name: "ゆたぼん", age: 10},
  #   {name: "あじー", age: 32},
  #   {name: "ぎん", age: 108}
  # ]
  #
  # users.each do |user|
  #     zoo.info_entry_fee(user)
  # end

end
