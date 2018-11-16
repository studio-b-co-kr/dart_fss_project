class AddNewTotalStocksToCompanyStocks < ActiveRecord::Migration[5.2]
  def change
    add_column :company_stocks, :NewTotalStocks, :integer
  end
end
