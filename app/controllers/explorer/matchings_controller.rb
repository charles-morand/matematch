class Explorer::MatchingsController < ApplicationController
  def new
    @explorer_activities = User::ACTIVITIES
    @selected_activity   = matching_criteria[:activity]
  end

  def index
    hobbies   = matching_criteria[:hobbies]
    languages = matching_criteria[:languages]
    city      = matching_criteria[:city]
    ages      = matching_criteria[:age]

    @matched_users = User.
                      where(role: "Guide").
                      where("hobbies && ARRAY[?]::varchar[] AND languages &&  ARRAY[?]::varchar[]", hobbies, languages).
                      where(address: city).
                      where("TRUNC(EXTRACT('epoch' FROM AGE(NOW(), users.birth_date)) / 31557600) BETWEEN ? AND ?", *ages)
  end

  def show
    @matched_user = User.find(params[:id])
    @contact_request = ContactRequest.new
  end

  def contact_request_params
    params.require(:contact_request).permit(:start_date, :end_date)
  end
end
