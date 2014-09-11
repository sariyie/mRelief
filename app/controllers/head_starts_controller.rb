class HeadStartsController < ApplicationController
  def index
    @head_starts = HeadStart.all
  end

  def show
    @head_start = HeadStart.find(params[:id])
  end

  def new
    @head_start = HeadStart.new
  end

  def create


    hs_dependent_no = params[:hs_dependent_no].to_i
    hs_gross_income = params[:hs_gross_income]
    hs_gross_income = hs_gross_income.gsub(/[^0-9\.]/, '').to_i

    if  hs_gross_income.present? && hs_dependent_no.present?

    hs_eligibility = HeadStart.find_by({ :hs_dependent_no => params[:hs_dependent_no] })


       p "hs_gross_income = #{hs_gross_income}"
       p "hs_eligibility.hs_gross_income = #{hs_eligibility.hs_gross_income}"

       if hs_gross_income < hs_eligibility.hs_gross_income
         if params[:child_birthdate]  == "yes"
            @eligible = true
          end
       else

      end
    end #closes if statement
  end #closes end
end

