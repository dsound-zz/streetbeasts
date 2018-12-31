class AddIpAddressToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :ip_address, :float
  end
end
