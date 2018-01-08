class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.string :name
      t.date :date
      t.integer :duration
      t.integer :kcal

      t.timestamps
    end
  end
end
