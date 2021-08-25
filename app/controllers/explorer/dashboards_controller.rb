class Explorer::DashboardsController < ApplicationController

  def index
    @sent_requests = current_user.contact_requests
  end

end
