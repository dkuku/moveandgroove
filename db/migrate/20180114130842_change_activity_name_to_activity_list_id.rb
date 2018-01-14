class ChangeActivityNameToActivityListId < ActiveRecord::Migration[5.1]
  def change
    rename_column :activities, :name, :activity_list_id
    change_column :activities, :activity_list_id, :integer
  end
end
