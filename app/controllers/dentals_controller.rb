class DentalsController < ApplicationController
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

    dental_gross_income = params[:dental_gross_income]
    dental_gross_income = dental_gross_income.gsub(/[^0-9\.]/, '').to_i
    dental_household_size = params[:dental_household_size].to_i

    if  dental_gross_income.present? && dental_household_size.present?

      dental_eligibility = Dental.find_by({ :dental_household_size => params[:dental_household_size] })

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
