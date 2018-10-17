class RemoveStrtDateFromCompanyStocks < ActiveRecord::Migration[5.2]
  def change
    remove_column :company_stocks, :strt_date, :date
  end
end
