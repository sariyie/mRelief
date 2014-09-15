class HousingAssistancesController < ApplicationController
   require 'numbers_in_words'
  require 'numbers_in_words/duck_punch' #see why later
  def index
    @housing_assistances = HousingAssistance.all
  end

  def show
    @housing_assistance = HousingAssistance.find(params[:id])
  end

  def new
    @housing_assistance = HousingAssistance.new
  end

  def create

     # if the params hash contains a letter
    if params[:housing_dependent_no] !~ /\D/  # returns true if all numbers
      housing_dependent_no = params[:housing_dependent_no].to_i
    else
      housing_dependent_no = params[:housing_dependent_no].in_numbers
    end

    housing_gross_income = params[:housing_gross_income]
    housing_gross_income = housing_gross_income.gsub(/[^0-9\.]/, '').to_i

    if housing_gross_income !~ /\D/
      housing_gross_income = housing_gross_income.to_i
    else
      if housing_gross_income.include?("dollars")
        housing_gross_income.slice!"dollars"
      end
      housing_gross_income = housing_gross_income.in_numbers
    end

    if housing_gross_income.present? && housing_dependent_no.present?

         housing_eligibility = HousingAssistance.find_by({ :housing_dependent_no => housing_dependent_no })


       p "housing_gross_income = #{housing_gross_income}"
       p "housing_eligibility.housing_gross_income = #{housing_eligibility.housing_gross_income}"

       if housing_gross_income < housing_eligibility.housing_gross_income
         @eligible = true
       else

        end
     else
       redirect_to :back, :notice => "All fields are required."
     end
  end
end

