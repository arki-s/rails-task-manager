class RemoveCompletedToTasks < ActiveRecord::Migration[7.0]
  def change
    remove_column :tasks, :completed, :boolean
  end
end
