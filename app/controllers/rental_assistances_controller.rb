class RentalAssistancesController < ApplicationController
  require 'numbers_in_words'
  require 'numbers_in_words/duck_punch' #see why later

  require 'open-uri'
  require 'json'

  def new
    @rental_assistance = RentalAssistance.new
  end

  def create

    if params[:rental_dependent_no] !~ /\D/  # returns true if all numbers
      rental_dependent_no = params[:rental_dependent_no].to_i
    else
      rental_dependent_no = params[:rental_dependent_no].in_numbers
    end

    rental_gross_income = params[:rental_gross_income]
    rental_gross_income = rental_gross_income.gsub(/[^0-9\.]/, '').to_i

    if rental_gross_income !~ /\D/
      rental_gross_income = rental_gross_income.to_i
    else
      if rental_gross_income.include?("dollars")
        rental_gross_income.slice!"dollars"
      end
      rental_gross_income = rental_gross_income.in_numbers
    end

    if  rental_gross_income.present? && rental_dependent_no.present?

    rental_eligibility = RentalAssistance.find_by({ :rental_dependent_no => rental_dependent_no })


       p "rental_gross_income = #{rental_gross_income}"
       p "rental_eligibility.rental_gross_income = #{rental_eligibility.rental_gross_income}"

       if rental_gross_income < rental_eligibility.rental_gross_income && params[:rental_status] != "none of the above"
          @eligible = true
      end

    end #closes first if statement
  end #closes method
end
