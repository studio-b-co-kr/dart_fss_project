require "application_system_test_case"

class CompanyStocksTest < ApplicationSystemTestCase
  setup do
    @company_stock = company_stocks(:one)
  end

  test "visiting the index" do
    visit company_stocks_url
    assert_selector "h1", text: "Company Stocks"
  end

  test "creating a Company stock" do
    visit company_stocks_url
    click_on "New Company Stock"

    fill_in "End Date", with: @company_stock.end_date
    fill_in "Name", with: @company_stock.name
    fill_in "Sharecode", with: @company_stock.sharecode
    fill_in "Strt Date", with: @company_stock.strt_date
    click_on "Create Company stock"

    assert_text "Company stock was successfully created"
    click_on "Back"
  end

  test "updating a Company stock" do
    visit company_stocks_url
    click_on "Edit", match: :first

    fill_in "End Date", with: @company_stock.end_date
    fill_in "Name", with: @company_stock.name
    fill_in "Sharecode", with: @company_stock.sharecode
    fill_in "Strt Date", with: @company_stock.strt_date
    click_on "Update Company stock"

    assert_text "Company stock was successfully updated"
    click_on "Back"
  end

  test "destroying a Company stock" do
    visit company_stocks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Company stock was successfully destroyed"
  end
end
