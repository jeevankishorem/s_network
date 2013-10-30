# namespace :db do
#   desc "Fill database with sample data"
#   task populate: :environment do
 
#     users = User.all(limit: 6)
#     50.times do
#       content = Faker::Lorem.sentence(5)
#       users.each { |user| user.microposts.create!(content: content) }
#     end
#   end
# end
#population

# namespace :db do
#   desc "Fill database with sample data"
#   task populate: :environment do
#     make_users
#     make_blogs
#     make_friendships
#   end
# end

# def make_users
#   admin = User.create!(first_name:     "jeevan",
#   					   last_name: "kishore"
#                        email:    "jeevank.m@tcs.com",
#                        encrypted_password: "12345678",
#                        password_confirmation: "12345678",
#                        role: "admin")
#   99.times do |n|
#     first_name  = Faker::Name.first_name
#     last_name = Faker::Name.last_name
#     email = "example-#{n+1}@railstutorial.org"
#     password  = "password"
#     User.create!(first_name:     first_name,
#     			 last_name: last_name,
#                  email:    email,
#                  password: password,
#                  password_confirmation: password)
#   end
# end

# def make_blogs
#   users = User.all(limit: 6)
#   50.times do
#     content = Faker::Lorem.sentence(5)
#     users.each { |user| user.blogs.create!(content: content) }
#   end
# end

# def make_friendships
#   users = User.all
#   user  = users.first
#   friend_users = users[2..50]
#   reverse_friends      = users[3..40]
#   friend_users.each { |friend_user| user.follow!(friend_user) }
#   reverse_friends.each      { |reverse_friend| reverse_friend.follow!(user) }
# end
