class AddCardIdsToProject < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :card_id, :integer
  end
end
