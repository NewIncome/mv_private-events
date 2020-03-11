class InvitationsController < ApplicationController
  def new
    @invitation = Invitation.new
  end

  def create
    @invitation = Invitation.new(invitation_params)

    if @invitation.save
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
