class CreateFavoriteposts < ActiveRecord::Migration
  def change
    create_table :favoriteposts do |t|
      t.references :favoritter, index: true
      t.references :favoritepost, index: true

      t.timestamps null: false
      t.index [:favoritter_id, :favoritepost_id], unique: true # この行を追加
    end
  end
end
