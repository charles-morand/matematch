class Guide::DashboardsController < ApplicationController

  def show
    @received_requests = current_user.received_contact_requests
  end

end
