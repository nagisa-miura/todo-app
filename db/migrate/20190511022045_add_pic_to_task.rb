class AddPicToTask < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :pic, :string
  end
end
