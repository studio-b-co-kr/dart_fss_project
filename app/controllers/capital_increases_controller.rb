class CapitalIncreasesController < ApplicationController
  def index
    @capital_increases = CapitalIncrease.all
  end

  def new
  end

  def create
  end

  def edit
  end
end
