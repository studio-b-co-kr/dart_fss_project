class CalculateButtonController < ApplicationController
  def calculate_new_stocks
    @total_stocks =
  end
end

# This calculates the total amount of stocks after 증자 권리락일
# To calculate, ( current stocks owned * new stock issuance ratio ) + current stocks owned
