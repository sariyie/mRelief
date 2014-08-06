class ChildCareVouchersController < ApplicationController
  def index
    @child_care_vouchers = ChildCareVoucher.all
  end

  def show
    @child_care_voucher = ChildCareVoucher.find(params[:id])
  end

  def new
    @child_care_voucher = ChildCareVoucher.new
  end

  def create

    ccdf_dependent_no = params[:ccdf_dependent_no].to_i
    ccdf_eligible_children = params[:ccdf_eligible_children].to_i
    ccdf_gross_income = params[:ccdf_gross_income]
    ccdf_gross_income = ccdf_gross_income.gsub(/[^0-9\.]/, '').to_i

    if ccdf_gross_income.present? && ccdf_dependent_no.present?

        ccdf_eligibility = ChildCareVoucher.find_by({ :ccdf_dependent_no => params[:ccdf_dependent_no] })


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

