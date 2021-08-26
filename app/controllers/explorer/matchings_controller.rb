class Explorer::MatchingsController < ApplicationController
  def new
    @explorer_activities = User::ACTIVITIES
    @selected_activity = params[:activity]
  end

  def index
    # if params[:query].present?
    # sql_query = "user.address ILIKE :query"
    # @matching = User.where(sql_query, query: "%#{params[:city]}%") && User.where(user.languages = "#{params[:languages]}" && User.where(user.genders = "#{params[:genders]}")
    # User.where('languages IN (?) AND hobbies IN (?)', ["FR", "ES"], ["Hiking", "Guitar"])
    # User.where("hobbies @> ? OR hobbies @> ?", "{Football}", "{Piano}")

    @matched_users = User.where(role: "Guide").where("hobbies && ARRAY[?]::varchar[] AND languages &&  ARRAY[?]::varchar[]", params[:hobbies], params[:languages]).where(address: params[:city])
    # else
    #   redirect_to explorer_activities_path
    # end
  end
end
