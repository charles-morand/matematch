class Explorer::MatchingsController < ApplicationController
  def new
    @explorer_activities = User::ACTIVITIES
    @selected_activity = params[:activity]
  end

  def index
    # if params[:query].present?
    # @matching = User.where(sql_query, query: "%#{params[:city]}%") && User.where(user.languages = "#{params[:languages]}" && User.where(user.genders = "#{params[:genders]}")
    # age = (Time.now.year - User.where("age && ARRAY[?]::integer[]", params[:chosen_age]).year)

    @matched_users = User.
                      where(role: "Guide").
                      where("hobbies && ARRAY[?]::varchar[] AND languages &&  ARRAY[?]::varchar[]", params[:hobbies], params[:languages]).
                      where(address: params[:city]).
                      where("TRUNC(EXTRACT('epoch' FROM AGE(NOW(), users.birth_date)) / 31557600) BETWEEN ? AND ?", *params[:age])
    # else
    #   redirect_to explorer_activities_path
    # end
  end
end
