class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    if current_user.role == "Guide"
      guide_dashboard_path
    elsif current_user.role == "Explorer"
      explorer_dashboard_path
    end
  end

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end

  protected

  def configure_permitted_parameters
    # devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :address, :bio, :birth_date,
    #                                   :gender, :photo, :phone_number, :role, :languages, :hobbies, :chosen_activities])
    # devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :address, :bio, :birth_date,
    #                                   :gender, :photo, :phone_number, :role, :languages, :hobbies, :chosen_activities])

    # devise_parameter_sanitizer.permit(:sign_up) do |user_params|
    #   user_params.permit({ languages: [], hobbies: [], chosen_activities: [] }, :first_name, :last_name,
    #                       :address, :bio, :birth_date, :password, :email, :password_confirmation, :phone_number,
    #                       :photo, :role, :gender)
    # end

    # pushing test

    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit(:first_name, :last_name,
                          :address, :bio, :birth_date, :password, :email, :password_confirmation, :phone_number,
                          :photo, :role, :gender, languages: [], hobbies: [], chosen_activities: [])
    end
  end

  private

  def matching_criteria_present?
    ContactRequest::MATCHING_CRITERIA.all? do |criteria|
      matching_criteria[criteria].present?
    end
  end

  def matching_criteria
    @matching_criteria ||= begin
      ContactRequest::MATCHING_CRITERIA.each_with_object({}) do |criteria, h|
        h[criteria] = if params[criteria].present?
                        (session[criteria] = params[criteria])
                      else
                        session[criteria]
                      end
      end
    end
  end
end
