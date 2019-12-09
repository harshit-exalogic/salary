class AddDetailsToUsers < ActiveRecord::Migration[6.0]
  def change
  	add_column :users, :employee_id, :integer
  	add_column :users, :department, :string
  	add_column :users, :designation, :string
  	add_column :users, :bank_account, :integer
  end
end
