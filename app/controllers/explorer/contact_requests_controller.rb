module Explorer
  class ContactRequestsController < ApplicationController
    def create
      @matched_user = User.find(params[:matching_user_id])
      @contact_request = current_user.contact_requests.build(
        status: "pending",
        guide: @matched_user,
        activity: matching_criteria[:activity]
      )

      if @contact_request.save
        redirect_to explorer_root_path
      else
        render "explorer/matchings/show"
      end
    end
  end
end
