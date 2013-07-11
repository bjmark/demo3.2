def user_name
  puts User.first.name
end

User.new do |t|
  t.name = 'mark1'
  t.save
end

user_name

5.times do |i|
  User.establish_connection(
    :adapter => 'sqlite3',
    :database => "#{Rails.root}/db/user#{i+1}.sqlite3"
  )
  User.delete_all
  User.new do |t|
    t.name = "mark#{i+1}"
    t.save
  end

end


5.times do |i|
  User.establish_connection(
    :adapter => 'sqlite3',
    :database => "#{Rails.root}/db/user#{i+1}.sqlite3"
  )
  user_name
end



