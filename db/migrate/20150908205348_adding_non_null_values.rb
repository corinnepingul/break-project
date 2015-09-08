class AddingNonNullValues < ActiveRecord::Migration
  def change
    change_column_null :users, :username, false
    change_column_null :users, :email, false
    change_column_null :users, :password_digest, false

    change_column_null :items, :user_id, false
    change_column_null :items, :name, false

    change_column_null :outfits, :user_id, false
    change_column_null :outfits, :name, false

    change_column_null :categories, :user_id, false
    change_column_null :categories, :name, false
  end
end
