class AutoRepairAssistancesController < ApplicationController
  def index
    @auto_repair_assistances = AutoRepairAssistance.all
  end

  def show
    @auto_repair_assistance = AutoRepairAssistance.find(params[:id])
  end

  def new
    @auto_repair_assistance = AutoRepairAssistance.new
  end

  def create

    auto_household_size = params[:auto_household_size].to_i
    auto_gross_income = params[:auto_gross_income]
    auto_gross_income = auto_gross_income.gsub(/[^0-9\.]/, '').to_i

    if  auto_household_size.present? && auto_gross_income.present?

      auto_eligibility = AutoRepairAssistance.find_by(:auto_household_size => params[:auto_household_size])

      if auto_gross_income < auto_eligibility.auto_gross_income
         @eligible = true
       else

      end

    else
       redirect_to :back, :notice => "All fields are required."

    end

  end

  def edit
    @auto_repair_assistance = AutoRepairAssistance.find(params[:id])
  end

  def update
    @auto_repair_assistance = AutoRepairAssistance.find(params[:id])

    @auto_repair_assistance.auto_household_size = params[:auto_household_size]
    @auto_repair_assistance.auto_gross_income = params[:auto_gross_income]

    if @auto_repair_assistance.save
      redirect_to "/auto_repair_assistances", :notice => "Auto repair assistance updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @auto_repair_assistance = AutoRepairAssistance.find(params[:id])

    @auto_repair_assistance.destroy

    redirect_to "/auto_repair_assistances", :notice => "Auto repair assistance deleted."
  end
end
