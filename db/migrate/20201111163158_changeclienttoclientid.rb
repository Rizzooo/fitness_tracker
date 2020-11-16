class Changeclienttoclientid < ActiveRecord::Migration[6.0]
  def change
    rename_column :training_sessions, :client, :client_id
  end
end
