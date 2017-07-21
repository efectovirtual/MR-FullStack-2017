class User < ApplicationRecord
  has_many :articles

  validates :username,:full_name, presence: true
  validates :username, length: { in: 5..20 }
  validates :full_name, length: { in: 3..20 }
end
