class SalesController < ApplicationController
  def index
    sales = Sale.all
    render json: sales
  end

  def create
    sale = Sale.new(
      movie_id: params[:movie_id],
      report_id: nil,
      theater_number: params[:theater_number],
      time_slot: params[:time_slot],
      tickets_sold: params[:tickets_sold],
    )

    if sale.save
      render json: sale
    else
      render json: { errors: sale.errors.full_messages }
    end
  end
end
