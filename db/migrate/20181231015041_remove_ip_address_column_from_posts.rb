class RemoveIpAddressColumnFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :ip_address, :float
  end
end
