class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find_by(id: params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      flash[:success] = 'Event successfully created'
      redirect_to @event
    else
      flash[:danger] = 'Failed to create event'
      render 'new'
    end
  end

  private

  def event_params
    params.require(:event).permit(
      :name,
      :creator_id,
      :date,
      :description,
      :image
    )
  end
end