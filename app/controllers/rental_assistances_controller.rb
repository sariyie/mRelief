class RentalAssistancesController < ApplicationController
  def index
    @rental_assistances = RentalAssistance.all
  end

  def show
    @rental_assistance = RentalAssistance.find(params[:id])
  end

  def new
    @rental_assistance = RentalAssistance.new
  end

  def create
    @rental_assistance = RentalAssistance.new
    @rental_assistance.rental_dependent_no = params[:rental_dependent_no]
    @rental_assistance.rental_gross_income = params[:rental_gross_income]
    @rental_assistance.rental_status = params[:rental_status]

    if @rental_assistance.save
      redirect_to "/rental_assistances", :notice => "Rental assistance created successfully."
    else
      render 'new'
    end
  end

  def edit
    @rental_assistance = RentalAssistance.find(params[:id])
  end

  def update
    @rental_assistance = RentalAssistance.find(params[:id])

    @rental_assistance.rental_dependent_no = params[:rental_dependent_no]
    @rental_assistance.rental_gross_income = params[:rental_gross_income]
    @rental_assistance.rental_status = params[:rental_status]

    if @rental_assistance.save
      redirect_to "/rental_assistances", :notice => "Rental assistance updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @rental_assistance = RentalAssistance.find(params[:id])

    @rental_assistance.destroy

    redirect_to "/rental_assistances", :notice => "Rental assistance deleted."
  end
end
