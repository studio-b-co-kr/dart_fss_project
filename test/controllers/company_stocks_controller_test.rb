require 'test_helper'

class CompanyStocksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @company_stock = company_stocks(:one)
  end

  test "should get index" do
    get company_stocks_url
    assert_response :success
  end

  test "should get new" do
    get new_company_stock_url
    assert_response :success
  end

  test "should create company_stock" do
    assert_difference('CompanyStock.count') do
      post company_stocks_url, params: { company_stock: { end_date: @company_stock.end_date, name: @company_stock.name, sharecode: @company_stock.sharecode, strt_date: @company_stock.strt_date } }
    end

    assert_redirected_to company_stock_url(CompanyStock.last)
  end

  test "should show company_stock" do
    get company_stock_url(@company_stock)
    assert_response :success
  end

  test "should get edit" do
    get edit_company_stock_url(@company_stock)
    assert_response :success
  end

  test "should update company_stock" do
    patch company_stock_url(@company_stock), params: { company_stock: { end_date: @company_stock.end_date, name: @company_stock.name, sharecode: @company_stock.sharecode, strt_date: @company_stock.strt_date } }
    assert_redirected_to company_stock_url(@company_stock)
  end

  test "should destroy company_stock" do
    assert_difference('CompanyStock.count', -1) do
      delete company_stock_url(@company_stock)
    end

    assert_redirected_to company_stocks_url
  end
end
