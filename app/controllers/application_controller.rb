class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  private

  def matching_criteria_present?
    ContactRequest::MATCHING_CRITERIA.all? do |criteria|
      matching_criteria[criteria].present?
    end
  end

  def matching_criteria
    @matching_criteria ||= begin
      ContactRequest::MATCHING_CRITERIA.each_with_object({}) do |criteria, h|
        h[criteria] = (session[criteria] ||= params[criteria])
      end
    end
  end
end
