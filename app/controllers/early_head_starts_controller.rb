class EarlyHeadStartsController < ApplicationController
  def index
    @early_head_starts = EarlyHeadStart.all
  end

  def show
    @early_head_start = EarlyHeadStart.find(params[:id])
  end

  def new
    @early_head_start = EarlyHeadStart.new
  end

  def create
   ehs_dependent_no = params[:ehs_dependent_no].to_i
    ehs_gross_income = params[:ehs_gross_income]
    ehs_gross_income = ehs_gross_income.gsub(/[^0-9\.]/, '').to_i

    if  ehs_gross_income.present? && ehs_dependent_no.present?

      ehs_eligibility = EarlyHeadStart.find_by({ :ehs_dependent_no => params[:ehs_dependent_no] })


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

