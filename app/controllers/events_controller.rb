class EventsController < ApplicationController
  before_action :logged_in_user?, only: %i[create new]

  def index
    @events = Event.all.includes(:creator).order(created_at: :desc)
  end

  def show
    @event = Event.where(id: params[:id]).includes(:creator).take
  end

  def new
    @event = Event.new
  end

  def create
    @event = helpers.current_user.created_events.build(event_params)
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

  def logged_in_user?
    return nil unless session[:id].nil?

    flash[:danger] = 'You need to be logeed in to post new events'
    redirect_to login_path
  end
end
