class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  validates :address, uniqueness: true, presence: true
  validates :category, uniqueness: true, presence: true, inclusion: { in: %w[chinese italian japanese french belgian] }
  validates :phone_number, presence: true
end
