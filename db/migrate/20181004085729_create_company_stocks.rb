class CreateCompanyStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :company_stocks do |t|
      t.string :name
      t.integer :sharecode

      t.timestamps
    end
  end
end
