class Explorer::MatchingsController < ApplicationController
  def new
    @explorer_activities = User::ACTIVITIES
    @selected_activity   = params[:activity]
  end

  def index
    hobbies   = params[:hobbies]
    languages = params[:languages]
    city      = params[:city]
    ages      = params[:age]

    @matched_users = User.
                      where(role: "Guide").
                      where("hobbies && ARRAY[?]::varchar[] AND languages &&  ARRAY[?]::varchar[]", hobbies, languages).
                      where('address ILIKE ?', "%#{city}%").
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
