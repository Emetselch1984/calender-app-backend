class EventsController < ApplicationController
  def index
    render json: Event.all
  end
  def show
    render json: Event.find(params[:id])
  end
  def create
    event = Event.new(events_params)
    if event.save
      render json: event
    else
      render json: event.errors,status: 422
    end
  end
  private
  def events_params
    params.require(:event).permit(:id,:name,:start,:end,:description,:color)
  end
end
