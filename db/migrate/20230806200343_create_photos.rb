class CreatePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t| 
     t.text :image
     t.boolean :purchase
    end
  end
end
 