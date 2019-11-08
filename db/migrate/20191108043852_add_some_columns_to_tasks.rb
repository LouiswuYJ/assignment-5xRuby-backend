class AddSomeColumnsToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :start_time, :datetime
    add_column :tasks, :end_time, :datetime
    add_column :tasks, :priority, :integer, default: 0
    add_column :tasks, :tag, :integer
    add_column :tasks, :status, :integer, default: 0
  end
end
