class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         
  has_many :orders
  has_many :addresses
  has_many :invoices

  # belongs_to :user
  # belongs_to :order
  # validates :email, :username uniqueness: {message: "Inigrese otro %{}" }
  
  validates :password, length: { in: 8..10 }

  before_validation :sanitize

  private 
    def sanitize
      username.downcase!
      email.downcase!
    end

  
end