require 'twilio-ruby'

class TwilioController < ApplicationController
  include Webhookable

  after_filter :set_header

  skip_before_action :verify_authenticity_token

  def text

    message = "Hello, thanks for message number"
    twiml = Twilio::TwiML::Response.new do |r|
      r.Message message
    end
    twiml.text
    response_twiml twiml

  end
end
