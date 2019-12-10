class AddSalaryMonthYearToUsers < ActiveRecord::Migration[6.0]
  def change
  	add_column :users, :salary_month, :string
  	add_column :users, :salary_year, :integer
  end
end
