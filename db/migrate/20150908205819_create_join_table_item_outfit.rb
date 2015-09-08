class CreateJoinTableItemOutfit < ActiveRecord::Migration
  def change
    create_join_table :items, :outfits do |t|
      t.index :item_id
      t.index :outfit_id
    end
  end
end
