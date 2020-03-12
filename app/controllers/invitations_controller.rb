class InvitationsController < ApplicationController
  before_action :logged_in_user?, only: %i[create new]

  def new
    @invitation = Invitation.new
    @users = User.all.order('username').map { |user| [user.username, user.id] }
    @events = Event.all.order('name').map { |event| [event.name, event.id] }
  end

  def create
    @invitation = helpers.current_user.created_invitations.build(invitation_params)

    if @invitation.save
      flash[:success] = "#{@invitation.invitee.username} was invited!"
      redirect_to @invitation.event
    else
      flash[:danger] = 'failed to save invitation'
      render :new
    end
  end

  def invitation_params
    params.require(:invitation).permit(
      :user_id,
      :sent_by,
      :event_id
    )
  end
end
