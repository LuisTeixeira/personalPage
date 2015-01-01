class Comment < ActiveRecord::Base
  validates :content, presence: true
  validates :post, presence: true
  belongs_to :post
end
