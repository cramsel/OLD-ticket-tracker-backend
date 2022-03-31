class TimeslotsController < ApplicationController
  def index
    timeslots = Timeslot.all.includes(:sales)
    render json: timeslots
  end

  def create
    timeslot = Timeslot.new(
      movie_id: params[:movie_id],
      time_slot: params[:time_slot],
      theater_number: params[:theater_number],
    )

    if timeslot.save
      render json: timeslot
    else
      render json: { errors: timeslot.errors.full_messages }
    end
  end
end
