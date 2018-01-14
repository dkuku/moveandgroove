class CreateActivityLists < ActiveRecord::Migration[5.1]
  def change
    create_table :activity_lists do |t|
      t.string :name
      t.string :theme
      t.string :main_image
      t.string :thumb_image

      t.timestamps
    end
  end
end
