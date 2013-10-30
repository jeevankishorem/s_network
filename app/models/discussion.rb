class Discussion < ActiveRecord::Base
	belongs_to :user
	has_many :posts
	validates :topic, presence: true, :length => { :within => 8..50 }
	validates :user_id, presence: true
end
