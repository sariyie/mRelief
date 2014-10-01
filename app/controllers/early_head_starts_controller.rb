class EarlyHeadStartsController < ApplicationController
 require 'numbers_in_words'
require 'numbers_in_words/duck_punch' #see why later



  def new
    @early_head_start = EarlyHeadStart.new
  end

  def create

   if params[:ehs_dependent_no] !~ /\D/  # returns true if all numbers
      ehs_dependent_no = params[:ehs_dependent_no].to_i
    else
      ehs_dependent_no = params[:ehs_dependent_no].in_numbers
    end


    ehs_gross_income = params[:ehs_gross_income]
    ehs_gross_income = ehs_gross_income.gsub(/[^0-9\.]/, '').to_i

    if ehs_gross_income !~ /\D/
      ehs_gross_income = ehs_gross_income.to_i
    else
      if ehs_gross_income.include?("dollars")
        ehs_gross_income.slice!"dollars"
      end
      ehs_gross_income = ehs_gross_income.in_numbers
    end


    if  ehs_gross_income.present? && ehs_dependent_no.present?

      ehs_eligibility = EarlyHeadStart.find_by({ :ehs_dependent_no => ehs_dependent_no })


       p "ehs_gross_income = #{ehs_gross_income}"
       p "ehs_eligibility.ehs_gross_income = #{ehs_eligibility.ehs_gross_income}"

       if ehs_gross_income < ehs_eligibility.ehs_gross_income
         @eligible = true
       else

        end
     else
       redirect_to :back, :notice => "All fields are required."
     end
  end
end

