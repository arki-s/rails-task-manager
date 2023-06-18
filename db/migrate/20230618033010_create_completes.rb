class CreateCompletes < ActiveRecord::Migration[7.0]
  def change
    create_table :completes do |t|
      t.boolean :status, default: false
      t.date :date

      t.timestamps
    end
  end
end
