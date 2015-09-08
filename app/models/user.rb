class User < ActiveRecord::Base
  has_secure_password
  has_many :categories
  has_many :outfits
  has_many :items

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
end
