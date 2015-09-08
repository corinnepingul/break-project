class Category < ActiveRecord::Base
  belongs_to :user
  has_many :outfits

  validates :name, presence: true, uniqueness: true
  validates :user_id, presence: true
end
