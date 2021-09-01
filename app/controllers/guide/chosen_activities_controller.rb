class Guide::ChosenActivitiesController < ApplicationController
  def update
    @current_user.update(user_params) if params.dig(:user, :chosen_activities)&.any?

    redirect_to guide_dashboard_path
  end

  private

  def user_params
    params.require(:user).permit(chosen_activities: [])
  end
end
