class AddDeductionsToUsers < ActiveRecord::Migration[6.0]
  def change
  	add_column :users, :total_deductions, :number
  end
end
