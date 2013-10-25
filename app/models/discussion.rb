class Discussion < ActiveRecord::Base
	belongs_to :user
	has_many :posts
	validates :topic, presence: true
end
