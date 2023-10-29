class AddRoutingKeyToLogs < ActiveRecord::Migration[7.0]
  def change
    add_column :logs, :routing_key, :string
  end
end
