class Guide::DashboardsController < ApplicationController

  def show
    @received_requests = current_user.received_contact_requests
  end

  def accept
    contact_request = ContactRequest.find(params[:id])
    contact_request.status = "accepted"
    contact_request.save
  end

  def decline
    contact_request = Contact_request.find(params[:id])
    contact_request.status = "declined"
    contact_request.save
  end

end
