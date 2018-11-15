class CreateCompanyStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :company_stocks do |t|
      t.string :name
      t.integer :sharecode
      t.date :end_date
      t.float :new_stock_issuance_ratio
      t.integer :current_stock_amount

      t.timestamps
    end
  end
end
