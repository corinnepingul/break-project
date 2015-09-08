require 'rails_helper'

RSpec.describe Item, type: :model do
  describe "model validations" do
    let(:item) { create(:item) }

    it "requires a name" do
      no_name_item = build(:item, name: "")
      expect(no_name_item).to_not be_valid
    end

    it "requires a unique name" do
      item
      item2 = build(:item)
      expect(item2).to_not be_valid
    end

    it "requires a user_id" do
      no_user_id_item = build(:item, user_id: nil)
      expect(no_user_id_item).to_not be_valid
    end
  end
end
