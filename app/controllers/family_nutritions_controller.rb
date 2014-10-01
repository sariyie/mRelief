class FamilyNutritionsController < ApplicationController
   require 'numbers_in_words'
  require 'numbers_in_words/duck_punch' #see why later


  def new
    @family_nutrition = FamilyNutrition.new
  end

  def create

     # if the params hash contains a letter
    if params[:nutrition_household_size] !~ /\D/  # returns true if all numbers
      nutrition_household_size = params[:nutrition_household_size].to_i
    else
      nutrition_household_size = params[:nutrition_household_size].in_numbers
    end


    nutrition_gross_income = params[:nutrition_gross_income]
    nutrition_gross_income = nutrition_gross_income.gsub(/[^0-9\.]/, '').to_i

     if nutrition_gross_income !~ /\D/
      nutrition_gross_income = nutrition_gross_income.to_i
    else
      if nutrition_gross_income.include?("dollars")
        nutrition_gross_income.slice!"dollars"
      end
      nutrition_gross_income = nutrition_gross_income.in_numbers
    end



    if  nutrition_gross_income.present? && nutrition_household_size.present?

      nutrition_eligibility = FamilyNutrition.find_by({ :nutrition_household_size => nutrition_household_size })

      if nutrition_gross_income < nutrition_eligibility.nutrition_gross_income
        @eligible = true
      else

      end
    end
  end


end
