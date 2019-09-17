class AuthenticateAdmin < ActiveRecord::Migration[6.0]
  def change


    add_column :users, :admin_auth, :boolean
  end
end
