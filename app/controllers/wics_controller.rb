class WicsController < ApplicationController
   require 'numbers_in_words'
  require 'numbers_in_words/duck_punch' #see why later


  def new
    @wic = Wic.new
  end

  def create

    if params[:wic_household_size] !~ /\D/  # returns true if all numbers
      wic_household_size = params[:wic_household_size].to_i
    else
      wic_household_size = params[:wic_household_size].in_numbers
    end


    wic_gross_income = params[:wic_gross_income]
    wic_gross_income = wic_gross_income.gsub(/[^0-9\.]/, '')


    if wic_gross_income !~ /\D/
      wic_gross_income = wic_gross_income.to_i
    else
      if wic_gross_income.include?("dollars")
        wic_gross_income.slice!"dollars"
      end
      wic_gross_income = wic_gross_income.in_numbers
    end


    wic_status = params[:wic_status]

    if  wic_gross_income.present? && wic_household_size.present?

      wic_eligibility = Wic.find_by({ :wic_household_size => wic_household_size })

      if wic_gross_income < wic_eligibility.wic_gross_income
        if wic_status != 'none of the above'
          @eligible = true
        end
      end

    else
       redirect_to :back, :notice => "All fields are required."
    end

  end


end
