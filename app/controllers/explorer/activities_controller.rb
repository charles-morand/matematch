class Explorer::ActivitiesController < ApplicationController
  def index
    @explorer_activities = User::ACTIVITIES
  end
end
