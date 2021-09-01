class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
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
