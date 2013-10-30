# # spec/factories/contacts.rb 
require 'faker' 
FactoryGirl.define do 
factory :blog do |f| 
f.title { Faker::Lorem.sentence(word_count=4) } 
f.content { Faker::Lorem.paragraph(sentence_count=5) }
f.user_id { 2}
			end 
end 