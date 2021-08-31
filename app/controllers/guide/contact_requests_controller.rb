class Guide::ContactRequestsController < ApplicationController
  def accept
    contact_request = ContactRequest.find(params[:id])
    contact_request.status = "Accepted"
    contact_request.save
    redirect_to guide_dashboard_path
  end

  def decline
    contact_request = ContactRequest.find(params[:id])
    contact_request.status = "Declined"
    contact_request.save
  end
end
