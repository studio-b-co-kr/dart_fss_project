class CreateCapitalIncreases < ActiveRecord::Migration[5.2]
  def change
    create_table :capital_increases do |t|
      t.integer :total_number_of_new_issue_stocks
      t.integer :face_value_of_original_issue_stocks
      t.integer :price_of_new_issue_stocks
      t.integer :total_amount_raised_from_new_issue_stocks
      t.decimal :number_of_new_issue_stocks_per_original_stock
      t.date :completion_date_for_new_stock_registration
      t.date :estimated_date_for_new_stock_transfer
      t.date :estimated_date_for_public_offering_for_new_stock

      t.timestamps
    end
  end
end
