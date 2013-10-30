# # spec/factories/contacts.rb 
require 'faker' 
FactoryGirl.define do 
factory :comment do |f| 
f.content { Faker::Lorem.sentence(word_count=4) }
f.user_id { 2}
f.blog_id { 2}
			end 
end 