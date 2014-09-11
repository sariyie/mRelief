class RtaFreeRidesController < ApplicationController
  def index
    @rta_free_rides = RtaFreeRide.all
  end

  def show
    @rta_free_ride = RtaFreeRide.find(params[:id])
  end

  def new
    @rta_free_ride = RtaFreeRide.new
  end

 def create


    if params[:rta_dependent_no] !~ /\D/  # returns true if all numbers
      rta_dependent_no = params[:rta_dependent_no].to_i
    else
      rta_dependent_no = params[:rta_dependent_no].in_numbers
    end

    rta_gross_income = params[:rta_gross_income]
    rta_gross_income = rta_gross_income.gsub(/[^0-9\.]/, '').to_i

    if rta_gross_income !~ /\D/
      rta_gross_income = rta_gross_income.to_i
    else
      if rta_gross_income.include?("dollars")
        rta_gross_income.slice!"dollars"
      end
      rta_gross_income = rta_gross_income.in_numbers
    end


    if  rta_gross_income.present? && rta_dependent_no.present?


         rta_eligibility = RtaFreeRide.find_by({ :rta_dependent_no => rta_dependent_no })


       p "rta_gross_income = #{rta_gross_income}"
       p "rta_eligibility.rta_gross_income = #{rta_eligibility.rta_gross_income}"

       if rta_gross_income < rta_eligibility.rta_gross_income
         @eligible = true
       else

        end
     else
       redirect_to :back, :notice => "All fields are required."
     end
  end
end


