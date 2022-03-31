class SalesController < ApplicationController
  def index
    sales = Sale.all
    render json: sales
  end

  def create
    sale = Sale.new(
      timeslot_id: params[:timeslot_id],
      tickets_sold: params[:tickets_sold],
    )

    if sale.save
      render json: sale
    else
      render json: { errors: sale.errors.full_messages }
    end
  end
end
