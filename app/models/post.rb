class Post < ActiveRecord::Base
	validates :content, presence: true
	validates :title, presence: true, length: { maximum: 120 }
end
