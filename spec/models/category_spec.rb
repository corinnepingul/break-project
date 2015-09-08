require 'rails_helper'

RSpec.describe Category, type: :model do
  describe "model validations" do
    let(:category) { create(:category) }

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
end
