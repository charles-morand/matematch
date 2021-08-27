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

  def show
    @matched_user = User.find(params[:id])
    @contact_request = ContactRequest.new
  end

  def create
    @contact_request = ContactRequest.new
    @contact_request.status = "pending"
    @contact_request.user = current_user
    # @contact_request.user = User.find(params[:user_id])
    @matched_user = User.find(params[:user_id])

    if @contact_request.save
      redirect_to explorer_contact_requests_path
    else
      render 'new'
    end

  end
  def contact_request_params
    params.require(:contact_request).permit(:start_date, :end_date)
  end
end
