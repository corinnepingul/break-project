require 'rails_helper'

RSpec.describe Outfit, type: :model do
  describe "model validations" do
    let(:outfit) { create(:outfit) }

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
end
