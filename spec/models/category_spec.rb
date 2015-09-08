require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:category) { create(:category) }

  describe "model validations" do
    it "requires a name" do
      no_name_category = build(:category, name: "")
      expect(no_name_category).to_not be_valid
    end

    it "requires a unique name" do
      category
      category2 = build(:category)
      expect(category2).to_not be_valid
    end

    it "requires a user_id" do
      no_user_id_category = build(:category, user_id: nil)
      expect(no_user_id_category).to_not be_valid
    end
  end

  describe "model associations" do
    it "belongs to user" do
      expect(category.user_id).to eq 1
    end

    it "has many outfits" do
      category
      outfit = create(:outfit)
      category.outfits.push(outfit)
      expect(category.outfits.count).to eq 1
    end
  end
end
