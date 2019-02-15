module EventHelper
  def is_user_the_event_creator?
      user_signed_in? && current_user == @event.user
  end
end
