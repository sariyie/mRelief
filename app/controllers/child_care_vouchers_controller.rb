class ChildCareVouchersController < ApplicationController
   require 'numbers_in_words'
  require 'numbers_in_words/duck_punch' #see why later


  def new
    @child_care_voucher = ChildCareVoucher.new
  end

  def create

    # if the params hash contains a letter
    if params[:ccdf_dependent_no] !~ /\D/  # returns true if all numbers
      ccdf_dependent_no = params[:ccdf_dependent_no].to_i
    else
      ccdf_dependent_no = params[:ccdf_dependent_no].in_numbers
    end

    if params[:ccdf_eligible_children] !~ /\D/
      ccdf_eligible_children = params[:ccdf_eligible_children].to_i
    else
      ccdf_eligible_children = params[:ccdf_eligible_children].in_numbers
    end

    ccdf_gross_income = params[:ccdf_gross_income]
    ccdf_gross_income = ccdf_gross_income.gsub(/[^0-9\.]/, '')


    if ccdf_gross_income !~ /\D/
      ccdf_gross_income = ccdf_gross_income.to_i
    else
      if ccdf_gross_income.include?("dollars")
        ccdf_gross_income.slice!"dollars"
      end
      ccdf_gross_income = ccdf_gross_income.in_numbers
    end

    if ccdf_gross_income.present? && ccdf_dependent_no.present?

        ccdf_eligibility = ChildCareVoucher.find_by({ :ccdf_dependent_no => ccdf_dependent_no })


       p "ccdf_gross_income = #{ccdf_gross_income}"
       p "ccdf_eligibility.ccdf_gross_income = #{ccdf_eligibility.ccdf_gross_income}"

       if ccdf_gross_income < ccdf_eligibility.ccdf_gross_income
         @eligible = true
       else

        end
     else
       redirect_to :back, :notice => "All fields are required."
     end
  end
end

