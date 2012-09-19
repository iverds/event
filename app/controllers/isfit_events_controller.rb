class IsfitEventsController < ApplicationController
  def new
    @isfit_event = IsfitEvent.new
  end

  def index
    if params[:month] && params[:year]
      @start_date = Date.new(params[:year].to_i, params[:month].to_i)
      @end_date = Date.new(params[:year].to_i, params[:month].to_i,-1)
    else
      @start_date = Date.today.beginning_of_month
      @end_date = Date.today.end_of_month
    end
    @range = @start_date..@end_date
  end

  def on_date
    range = Date.new(params[:year].to_i, params[:month].to_i, params[:day].to_i).beginning_of_day..Date.new(params[:year].to_i, params[:month].to_i,params[:day].to_i).end_of_day
    @isfit_events = IsfitEvent.where(start_date: range)
  end

  def show

  end

  def create
    @isfit_event = IsfitEvent.new(params[:isfit_event])
    if @isfit_event.save
      redirect_to isfit_events_path, notice: "New event created"
    else
      render :new
    end
  end
end
