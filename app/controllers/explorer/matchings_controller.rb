class Explorer::MatchingsController < ApplicationController
  def new
    @explorer_activities = User::ACTIVITIES
    @selected_activity = params[:activity]
  end
end
