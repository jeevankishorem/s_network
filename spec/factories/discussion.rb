# # spec/factories/contacts.rb 
require 'faker' 
FactoryGirl.define do 
factory :discussion do |f| 
f.topic { Faker::Lorem.sentence(2) } 
f.user_id { 2}
			end 
end 