class RemoveTagColumnFromTask < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasks, :tag
  end
end
