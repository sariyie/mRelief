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
      message = "Welcome to mRelief! We help determine your eligibility for food stamps. How old are you? If you make a mistake, send the message 'reset'."
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
      #message = "Your income is #{session['income']}. You have #{session['dependents']} dependents. You are #{session['age']} years old."
      age = session["age"].to_i
      snap_dependent_no = session["dependents"].to_i
      snap_gross_income = session["income"]
        if age.present? && snap_gross_income.present? && snap_dependent_no.present?

       if age <= 59
         snap_eligibility = SnapEligibility.find_by({ :snap_dependent_no => snap_dependent_no })
       else
         snap_eligibility = SnapEligibilitySenior.find_by({ :snap_dependent_no => snap_dependent_no })
       end

       p "snap_gross_income = #{snap_gross_income}"
       p "snap_eligibility.snap_gross_income = #{snap_eligibility.snap_gross_income}"

       if snap_gross_income < snap_eligibility.snap_gross_income
         @eligible = true
       else
       end

      if @eligible == true
        message = "Your income is #{session['income']}. You have #{session['dependents']} dependents. You are #{session['age']} years old. You may be in luck! You likely qualify for foodstamps. Call 311 to find the nearest family community resource center near you."
      end
      if @eligible != true
        message = "Your income is #{session['income']}. You have #{session['dependents']} dependents. You are #{session['age']} years old. Text FOOD to 877-877 to find food near you."
      end
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
