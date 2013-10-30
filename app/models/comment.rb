class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :blog
	validates :content, presence: true, :length => { :within => 2..150 }
	validates :user_id, presence: true
	validates :blog_id, presence: true
end
