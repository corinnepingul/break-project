class Outfit < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :user_id, presence: true
end
