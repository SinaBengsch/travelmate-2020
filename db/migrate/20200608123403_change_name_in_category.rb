class ChangeNameInCategory < ActiveRecord::Migration[6.0]
  def change
    rename_column :categories, :names, :name
  end
end
