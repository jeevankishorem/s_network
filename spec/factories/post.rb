# # spec/factories/contacts.rb 
require 'faker' 
FactoryGirl.define do 
factory :post do |f| 
f.content { Faker::Lorem.paragraph(sentence_count=5) }
f.user_id { 2}
f.discussion_id{2}
			end 
end 