class RentalAssistancesController < ApplicationController
  def index
    @rental_assistances = RentalAssistance.all
  end

  def show
    @rental_assistance = RentalAssistance.find(params[:id])
  end

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

        # elsif rental_gross_income  < rental_eligibility.rental_gross_income +100 && params[:rental_status] != "none of the above"
        #   @maybe_eligible = true

        # else
        #   @eligible = false

         # if params[:rental_status]  == "medical circumstance"
         #    @eligible_medical = true

         #  elsif params[:rental_status]  == "a victim of natural disaster or fire"
         #    @eligible_natural_disaster = true

         #  elsif params[:rental_status]  == "a recipient of an eviction notice"
         #    @eligible_eviction = true

         #  elsif params[:rental_status]  == "someone whose unemployment benefits have ended"
         #    @eligible_unemployment = true

         #  elsif params[:rental_status]  == "have experienced a temporary loss of income"
         #    @eligible_income_loss = true

         #  elsif params[:rental_status]  == "a victim of domestic violence"
         #    @eligible_domestic_violence = true

         #  end

         # rental_eligibility_range = rental_eligibility - 100


      end
    end #closes first if statement
  end #closes method
end
