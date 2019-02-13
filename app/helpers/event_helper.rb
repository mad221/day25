module EventHelper
  def is_user_the_event_admin?
      user_signed_in? && current_user == @event.user
  end

  def user_already_an_attendee
  @attendance = Event.find(params[:event_id])
  if current_user.id == @attendance.user.id
    flash[:danger] = "Vous participez déja à cet évenement !"
    redirect_to event_index_path
  end
end
end
