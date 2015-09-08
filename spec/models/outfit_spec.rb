require 'rails_helper'

RSpec.describe Outfit, type: :model do
  let(:outfit) { create(:outfit) }

  describe "model validations" do
    it "requires a name" do
      no_name_outfit = build(:outfit, name: "")
      expect(no_name_outfit).to_not be_valid
    end

    it "requires a unique name" do
      outfit
      outfit2 = build(:outfit)
      expect(outfit2).to_not be_valid
    end

    it "requires a user_id" do
      no_user_id_outfit = build(:outfit, user_id: nil)
      expect(no_user_id_outfit).to_not be_valid
    end
  end

  describe "model associations" do
    it "belongs to a user" do
      expect(outfit.user_id).to eq 1
    end

    it "belongs to a category" do
      expect(outfit.category_id).to eq 1
    end

    it "has and belongs to many items" do
      outfit
      item = create(:item)
      outfit.items.push(item)
      expect(outfit.items.count).to eq 1
    end
  end
end
