class VisionsController < ApplicationController
   require 'numbers_in_words'
  require 'numbers_in_words/duck_punch' #see why later


  def new
    @vision = Vision.new
  end

  def create
    # if the params hash contains a letter
    if params[:vision_household_size] !~ /\D/  # returns true if all numbers
      vision_household_size = params[:vision_household_size].to_i
    else
      vision_household_size = params[:vision_household_size].in_numbers
    end

   vision_gross_income = params[:vision_gross_income]
   vision_gross_income = vision_gross_income.gsub(/[^0-9\.]/, '').to_i

   if vision_gross_income !~ /\D/
      vision_gross_income = vision_gross_income.to_i
    else
      if vision_gross_income.include?("dollars")
        vision_gross_income.slice!"dollars"
      end
      vision_gross_income = vision_gross_income.in_numbers
    end


   case_management = params[:case_management]



    if  vision_gross_income.present? && vision_household_size.present?

      vision_eligibility = Vision.find_by({ :vision_household_size => vision_household_size })

      if vision_gross_income < vision_eligibility.vision_gross_income

        if case_management == 'yes'
          @eligible = true
        end
      else

      end
    end
  end


end
