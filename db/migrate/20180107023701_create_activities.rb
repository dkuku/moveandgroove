class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.integer :activity_list_id
      t.date :date
      t.integer :duration
      t.integer :kcal

      t.timestamps
    end
  end
end
