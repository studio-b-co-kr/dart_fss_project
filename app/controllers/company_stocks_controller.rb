  class CompanyStocksController < ApplicationController
  before_action :set_company_stock, only: [:show, :edit, :update, :destroy]

  # GET /company_stocks
  # GET /company_stocks.json
  def index
    @company_stocks = CompanyStock.all
  end

  # GET /company_stocks/1
  # GET /company_stocks/1.json
  def show
    @company_stock = CompanyStock.find(params[:id])
  end

  # GET /company_stocks/new
  def new
    @company_stock = CompanyStock.new
  end

  # GET /company_stocks/1/edit
  def edit
  end

  # POST /company_stocks
  # POST /company_stocks.json
  def create
    @company_stock = CompanyStock.new(company_stock_params)

    respond_to do |format|
      if @company_stock.save
        format.html { redirect_to @company_stock, notice: 'Company stock was successfully created.' }
        format.json { render :show, status: :created, location: @company_stock }
      else
        format.html { render :new }
        format.json { render json: @company_stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /company_stocks/1
  # PATCH/PUT /company_stocks/1.json
  def update
    respond_to do |format|
      if @company_stock.update(company_stock_params)
        format.html { redirect_to @company_stock, notice: 'Company stock was successfully updated.' }
        format.json { render :show, status: :ok, location: @company_stock }
      else
        format.html { render :edit }
        format.json { render json: @company_stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /company_stocks/1
  # DELETE /company_stocks/1.json
  def destroy
    @company_stock.destroy
    respond_to do |format|
      format.html { redirect_to company_stocks_url, notice: 'Company stock was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company_stock
      @company_stock = CompanyStock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_stock_params
      params.require(:company_stock).permit(:name, :sharecode, :strt_date, :end_date)
    end
end
