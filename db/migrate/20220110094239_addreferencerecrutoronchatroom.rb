class Addreferencerecrutoronchatroom < ActiveRecord::Migration[6.1]
  def change
    add_column :chatrooms, :recrutor, :integer
  end
end
