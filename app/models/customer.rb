class Customer < ApplicationRecord

  belongs_to :province
  has_many :orders

  validates :name, :email, :first_name, :last_name, :address, :city, :postal_code, presence: true
  validates :email, :username, uniqueness: true

  canadian_postal_code = /\A[ABCEGHJKLMNPRSTVXY]{1}\\d{1}[A-Z]{1}[ -]?\\d{1}[A-Z]{1}\\d{1}\z/
  validates :postal_code, format: { with: canadian_postal_code }

end
