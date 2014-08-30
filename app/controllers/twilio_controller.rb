require 'twilio-ruby'

class TwilioController < ApplicationController
  include Webhookable

  after_filter :set_header

  skip_before_action :verify_authenticity_token

  def text
    twiml = Twilio::TwiML::Response.new do |r|
      r.Message "Welcome to mRelief! This conversation will help determine your eligibility for food stamps. How old are you?"
    end
    twiml.text
    render_twiml twiml

  end
end
