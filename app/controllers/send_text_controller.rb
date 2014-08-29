class SendTextController < ApplicationController
  def index
  end

  def send_text_message
    number_to_send_to = params[:number_to_send_to]

    twilio_sid = ENV['TWILIO_SID']

    twilio_token = ENV['TWILIO_TOKEN']
    twilio_phone_number = ENV['TWILIO_PHONE_NUMBER']

    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

    @twilio_client.account.sms.messages.create(
      :from => "+1#{twilio_phone_number}",
      :to => "+1#{twilio_phone_number}",
      :body => "Welcome to mRelief! This conversation will help determine your eligibility for food stamps. How old are you?"
    )
  end
end
