require 'twilio-ruby'

class TwilioController < ApplicationController
  include Webhookable

  after_filter :set_header

  skip_before_action :verify_authenticity_token

  def text
    session["counter"] ||= 0
    sms_count = session["counter"]
    if sms_count == 0
      message = "Hello, thanks for the new message."
    else
      message = "Hello, thanks for message number #{sms_count + 1}"
    end
    twiml = Twilio::TwiML::Response.new do |r|
      r.Message message
    end
    session["counter"] += 1
    twiml.text
    response_twiml twiml

  end
end
