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

    # session_age = params[:age].to_i
    # snap_dependent_no = params[:snap_dependent_no].to_i
    # snap_gross_income = params[:snap_gross_income]
    # snap_gross_income = snap_gross_income.gsub(/[^0-9\.]/, '').to_i

    if params[:Body] == "reset"
      session["counter"] = 0
    end
       sms_count = session["counter"]
    if sms_count == 0
      message = "Welcome to mRelief! This conversation will help determine your eligibility for food stamps. How old are you?"
    end
    if sms_count == 1
      session["age"] = params[:Body]
      message = "How many dependents are in your household? Dependents are the number of people living in your household, including yourself. #{session['counter']}"
    end
    if sms_count == 2
      session["dependents"] = params[:Body]
      message = "What is your gross monthly income? Income includes social security, child support, and unemployment insurance before any deductions."
    end
    if sms_count == 3
      session["income"] = params[:Body]
      message = "Your income is #{session['income']}. You have #{session['dependents']} dependents. You are #{session['age']}"
      age = session["age"].to_i
      snap_dependent_no = session["dependents"].to_i
      snap_gross_income = session["income"]
    end
    if sms_count > 3
      message = "Still stuck #{params[:Body]} #{session['counter']}"
    end
    twiml = Twilio::TwiML::Response.new do |r|
      r.Message message
    end
    session["counter"] += 1
    twiml.text
      render_twiml twiml
  end
end
