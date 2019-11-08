class AddSomeColumnsToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :start_time, :datetime
    add_column :tasks, :end_time, :datetime
    add_column :tasks, :priority, :string
    add_column :tasks, :tag, :string
    add_column :tasks, :status, :string, default: 'pending'
  end
end
