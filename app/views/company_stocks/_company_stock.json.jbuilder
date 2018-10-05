json.extract! company_stock, :id, :name, :sharecode, :strt_date, :end_date, :created_at, :updated_at
json.url company_stock_url(company_stock, format: :json)
