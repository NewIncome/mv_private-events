class EventsController < ApplicationController
  def index
    @events = Event.all.where('creator_id = 2').includes(:creator)
  end

  def show
    @event = Event.where(id: params[:id]).includes(:creator).take
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