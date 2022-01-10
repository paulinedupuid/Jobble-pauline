class Addcolumnstatusonmessage < ActiveRecord::Migration[6.1]
  def change
    add_column :messages, :status, :boolean, default: false
  end
end
