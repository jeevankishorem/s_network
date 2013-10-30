class Post < ActiveRecord::Base
	belongs_to :user
	belongs_to :discussion
	validates :user_id, presence: true
	validates :discussion_id, presence: true
	validates :content, :length => 10..300
end
