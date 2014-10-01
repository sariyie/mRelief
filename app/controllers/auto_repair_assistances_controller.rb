class AutoRepairAssistancesController < ApplicationController
   require 'numbers_in_words'
  require 'numbers_in_words/duck_punch' #see why later


  def new
    @auto_repair_assistance = AutoRepairAssistance.new
  end

  def create
     # if the params hash contains a letter
    if params[:auto_household_size] !~ /\D/  # returns true if all numbers
      auto_household_size = params[:auto_household_size].to_i
    else
      auto_household_size = params[:auto_household_size].in_numbers
    end

    auto_gross_income = params[:auto_gross_income]
    auto_gross_income = auto_gross_income.gsub(/[^0-9\.]/, '').to_i

    if auto_gross_income !~ /\D/
      auto_gross_income = auto_gross_income.to_i
    else
      if auto_gross_income.include?("dollars")
        auto_gross_income.slice!"dollars"
      end
      auto_gross_income = auto_gross_income.in_numbers
    end


    if  auto_household_size.present? && auto_gross_income.present?

      auto_eligibility = AutoRepairAssistance.find_by(:auto_household_size => auto_household_size)

      if auto_gross_income < auto_eligibility.auto_gross_income
         @eligible = true
       else

      end

    else
       redirect_to :back, :notice => "All fields are required."

    end

  end


end
