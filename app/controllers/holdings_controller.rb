class HoldingsController < ApplicationController
  before_action :set_holding, only: [:show, :edit,:destroy, :index]


  def index
    render json: Holding.all
  end

  def show
    render json: Holding.find_by(id: params[:id])
  end

private

  def set_holding
      @holding = Holding.find_by(id: params[:id])
  end

  def holding_params
      params.require(:holding).permit(
        :token,
        :amount,
        :costbasis,
        :wallet,
        :portfolio_id)
  end

end
