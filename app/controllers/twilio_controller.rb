require 'twilio-ruby'

class TwilioController < ApplicationController
  include Webhookable

  after_filter :set_header

  skip_before_action :verify_authenticity_token

  def text
    # twiml = Twilio::TwiML::Response.new do |r|
    #   r.Message "Welcome to mRelief! This conversation will help determine your eligibility for food stamps. How old are you?"
    # end
    session["counter"] ||= 0
    sms_count = session["counter"]
    if params[:body] == "reset"
      sms_count = 0
    end
    if sms_count == 0
      message = "Welcome to mRelief! This conversation will help determine your eligibility for food stamps. How old are you?"
    end
    if sms_count == 1
      session["age"] = params[:body]
      message = "How many dependents are in your household? Dependents are the number of people living in your household, including yourself. #{session['counter']}"
    end
    if sms_count == 2
      session["dependents"] = params[:body]
      message = "What is your gross monthly income? Income includes social security, child support, and unemployment insurance before any deductions."
    end
    if sms_count == 3
      session["income"] = params[:body]
      message = "Your income is #{session['income']}. You have #{session['dependents']}. You are #{session['age']}"
    else
    end
    twiml = Twilio::TwiML::Response.new do |r|
      r.Message message
    end
    session["counter"] += 1
    twiml.text
      render_twiml twiml

  end
end
