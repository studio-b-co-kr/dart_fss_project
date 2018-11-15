class TestController < ApplicationApiController
  def index
    render json: {test: :ok}
  end
end

