class AddBankDetailsToUsers < ActiveRecord::Migration[6.0]
  def change
  	add_column :users, :bank_name, :string
  	add_column :users, :bank_branch, :string
  	add_column :users, :ifsc_code, :string
  end
end
