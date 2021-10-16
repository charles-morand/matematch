class Guide::ContactRequestsController < ApplicationController
  TwilioClient = Twilio::REST::Client.new(ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN'])
  def accept
    contact_request = ContactRequest.find(params[:id])
    contact_request.status = "Accepted"
    contact_request.save
    TwilioClient.messages
                .create(
                        body: "#{current_user.first_name} accepted your request. His/her number is #{current_user.phone_number}. It's your turn now!",
                        from: '+16786733363',
                        to: "#{contact_request.explorer.phone_number}"
                        )
    redirect_to guide_dashboard_path
  end

  def decline
    contact_request = ContactRequest.find(params[:id])
    contact_request.status = "Declined"
    contact_request.destroy
    TwilioClient.messages
                .create(
                        body: "#{current_user.first_name} declined your request... :(",
                        from: '+16786733363',
                        to: "#{contact_request.explorer.phone_number}"
                        )
    redirect_to guide_dashboard_path
  end

  def show
    @contact_request = ContactRequest.find(params[:id])
  end
end
