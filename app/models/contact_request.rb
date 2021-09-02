class ContactRequest < ApplicationRecord
  TwilioClient = Twilio::REST::Client.new(ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN'])
  MATCHING_CRITERIA = %i[activity hobbies languages city age]

  belongs_to :guide, class_name: "User"
  belongs_to :explorer, class_name: "User"
  validates :status, presence: true
  validates :activity, presence: true

  after_create :send_message

  private

  def send_message
    TwilioClient.messages
                .create(
                         body: "#{self.explorer.first_name} wants to match with you on Matematch! Go to http://www.matematch.fr/",
                         from: '+14783948317',
                         to: "#{self.guide.phone_number}"
                       )
  end
end
