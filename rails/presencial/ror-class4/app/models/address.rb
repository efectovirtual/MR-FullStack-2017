class Address < ApplicationRecord
  belongs_to :user
  validates :states, presence: true, if: :us?
  validates :country, inclusion: { in:%w(co us)} #%w shotcode arreglero

  def us?
    country == 'us'
  end
end
