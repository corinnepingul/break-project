class Outfit < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_and_belongs_to_many :items

  validates :name, presence: true, uniqueness: true
  validates :user_id, presence: true
end
