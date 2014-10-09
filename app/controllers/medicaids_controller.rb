class MedicaidsController < ApplicationController


  def new
    @medicaid = Medicaid.new
  end


  def create
    if params[:medicaid_household_size] !~ /\D/  # returns true if all numbers
      medicaid_household_size = params[:medicaid_household_size].to_i
    else
      medicaid_household_size = params[:medicaid_household_size].in_numbers
    end

    medicaid_gross_income = params[:medicaid_gross_income]
    medicaid_gross_income = medicaid_gross_income.gsub(/[^0-9\.]/, '')

    if medicaid_gross_income !~ /\D/
      medicaid_gross_income = medicaid_gross_income.to_i
    else
      if medicaid_gross_income.include?("dollars")
        medicaid_gross_income.slice!"dollars"
      end
      medicaid_gross_income = medicaid_gross_income.in_numbers
    end

    medicaid_eligibility = Medicaid.find_by({ :medicaid_household_size => medicaid_household_size})

      p "medicaid_gross_income = #{medicaid_gross_income}"
      p "medicaid_eligibility.medicaid_gross_income = #{medicaid_eligibility.medicaid_gross_income}"


    if params[:citizen] == 'no'
      @eligible = 'maybe'
    elsif params[:citizen] == 'yes'
        if medicaid_gross_income < medicaid_eligibility.medicaid_gross_income
          @eligible = 'yes'
        else
          @eligible = 'no'
        end
    end

    @user_zipcode = params[:zipcode]
    zipcode = @user_zipcode << ".0"
    @lafcenter = LafCenter.find_by(:zipcode => zipcode)

  end
end
