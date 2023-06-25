class AddUserIdToTasks < ActiveRecord::Migration[7.0]
  def change
    add_reference :tasks, :user, type: :integer, null: false, foreign_key: true
  end
end