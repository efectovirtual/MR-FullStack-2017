class Article < ApplicationRecord
  belongs_to :user

  validates :title,:body, presence: true
  validates :title, length: { in: 10..30 }
  validates :body, length: { in: 20..120 }

end
