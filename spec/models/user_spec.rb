require 'rails_helper'

RSpec.describe User, type: :model do
  describe "model validations" do
    let(:user) { create(:user) }

    it "requires a unique username" do
      user
      user2 = build(:user, email: "other email")
      expect(user2).to_not be_valid
    end

    it "requires a username" do
      no_name_user = build(:user, username: "")
      expect(no_name_user).to_not be_valid
    end

    it "requires a unique email" do
      user
      user2 = build(:user, username: "other name")
      expect(user2).to_not be_valid
    end

    it "requires an email" do
      no_email_user = build(:user, email: "")
      expect(no_email_user).to_not be_valid
    end

    it "requires a password" do
      no_password_user = build(:user, password_digest: "")
      expect(no_password_user).to_not be_valid
    end

    it "requires password and password confirmation to be the same" do
      diff_password_user = build(:user, password: "one", password_confirmation: "two")
      same_password_user = build(:user, password: "one", password_confirmation: "one")

      expect(diff_password_user).to_not be_valid
      expect(same_password_user).to be_valid
    end
  end
end
