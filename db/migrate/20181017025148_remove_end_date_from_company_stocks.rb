class RemoveEndDateFromCompanyStocks < ActiveRecord::Migration[5.2]
  def change
    remove_column :company_stocks, :end_date, :date
  end
end
