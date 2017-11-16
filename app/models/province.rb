class Province < ApplicationRecord

  has_many :province

  validates :name, presence: true
  validates :pst, :gst, :hst, numericality: true
  
end
