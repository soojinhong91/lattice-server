class AddCardIdToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :card_id, :integer
  end
end
