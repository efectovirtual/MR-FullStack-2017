class Post < ApplicationRecord
  
  belongs_to :user
  has_many :comments

  validates :title,:content, presence: true
  # validates :title, length: { maximum: 20 }
  validates :title, length: { in: 1..100 }
  validates :content, length: { in: 1..140 }

end
