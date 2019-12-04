class AddSalaryToUsers < ActiveRecord::Migration[6.0]
  def change
  	# add_column :users, :name, :string
  	add_column :users, :basic_pay, :decimal
  	add_column :users, :reimbursement, :decimal
  	
  	add_column :users, :number_of_leaves_taken_by_employee, :decimal
  	add_column :users, :enter_the_tax_rate, :decimal
  	add_column :users, :other_deductions, :decimal
  	add_column :users, :house_rent_allowance, :decimal
  	add_column :users, :city_compensatory_allowance , :decimal
  	add_column :users, :special_allowance, :decimal
  	add_column :users, :transport_allowance, :decimal
  	add_column :users, :income_tax, :decimal
  	add_column :users, :professional_tax, :decimal
  	add_column :users, :loss_of_pay, :decimal
  	add_column :users, :gross_pay, :decimal
  	add_column :users, :net_pay, :decimal


  end
end
