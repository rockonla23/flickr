class CreatePhoto < ActiveRecord::Migration
def change
    create_table :photos do |t|
      t.integer :album_id
      t.string :path
      t.timestamps
    end
     add_index :photos, :album_id
  end
end

