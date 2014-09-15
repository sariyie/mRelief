class DentalsController < ApplicationController
   require 'numbers_in_words'
  require 'numbers_in_words/duck_punch' #see why later
  def index
    @dentals = Dental.all
  end

  def show
    @dental = Dental.find(params[:id])
  end

  def new
    @dental = Dental.new
  end

  def create

     # if the params hash contains a letter
    if params[:dental_household_size] !~ /\D/  # returns true if all numbers
      dental_household_size = params[:dental_household_size].to_i
    else
      dental_household_size = params[:dental_household_size].in_numbers
    end

    dental_gross_income = params[:dental_gross_income]
    dental_gross_income = dental_gross_income.gsub(/[^0-9\.]/, '').to_i

    if dental_gross_income !~ /\D/
      dental_gross_income = dental_gross_income.to_i
    else
      if dental_gross_income.include?("dollars")
        dental_gross_income.slice!"dollars"
      end
      dental_gross_income = dental_gross_income.in_numbers
    end


    if  dental_gross_income.present? && dental_household_size.present?

      dental_eligibility = Dental.find_by({ :dental_household_size => dental_household_size })

      if dental_gross_income < dental_eligibility.dental_gross_income
        @eligible = true
      else

      end
    end

  end

  def edit
    @dental = Dental.find(params[:id])
  end

  def update
    @dental = Dental.find(params[:id])

    @dental.dental_gross_income = params[:dental_gross_income]
    @dental.dental_household_size = params[:dental_household_size]

    if @dental.save
      redirect_to "/dentals", :notice => "Dental updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @dental = Dental.find(params[:id])

    @dental.destroy

    redirect_to "/dentals", :notice => "Dental deleted."
  end
end
