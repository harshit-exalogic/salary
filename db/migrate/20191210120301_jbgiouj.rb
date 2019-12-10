class Jbgiouj < ActiveRecord::Migration[6.0]
  def change
  	change_column :users, :bank_account, :string
  end
end
