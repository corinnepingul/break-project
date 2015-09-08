class Item < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :outfits

  validates :name, presence: true, uniqueness: true
  validates :user_id, presence: true
end
