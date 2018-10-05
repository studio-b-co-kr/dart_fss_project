class CreateCompanyStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :company_stocks do |t|
      t.string :name
      t.integer :sharecode
      t.date :strt_date
      t.date :end_date

      t.timestamps
    end
  end
end
