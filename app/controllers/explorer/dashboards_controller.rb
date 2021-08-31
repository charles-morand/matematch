class Explorer::DashboardsController < ApplicationController
  def show
    @sent_requests = current_user.contact_requests
  end
end
