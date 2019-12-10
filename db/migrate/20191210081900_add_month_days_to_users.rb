class AddMonthDaysToUsers < ActiveRecord::Migration[6.0]
  def change
  	add_column :users, :days_in_a_month, :string
  end
end
