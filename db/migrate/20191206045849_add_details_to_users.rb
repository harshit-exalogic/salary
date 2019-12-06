class AddDetailsToUsers < ActiveRecord::Migration[6.0]
  def change
  	add_column :users, :employee_id, :number
  	add_column :users, :department, :string
  	add_column :users, :designation, :string
  	add_column :users, :bank_account, :number
  end
end
