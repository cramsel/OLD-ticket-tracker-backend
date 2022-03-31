class ReportsController < ApplicationController
  def index
    reports = Report.all.includes(:timeslots, :sales)
    render json: reports
  end

  def create
    report = Report.new()
    date = DateTime.now.to_s.split(%r{T\s*})
    today = Date.parse(date[0])
    total_sales = Timeslot.where(created_at: today.midnight..today.end_of_day)
    report.name = "Report for #{today}"
    if report.save
      total_sales.each do |slot|
        slot.report_id = report.id
        slot.save
      end
      render json: report
    else
      render json: { errors: report.errors.full_messages }
    end
  end
end
