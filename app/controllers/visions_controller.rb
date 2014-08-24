class VisionsController < ApplicationController
  def index
    @visions = Vision.all
  end

  def show
    @vision = Vision.find(params[:id])
  end

  def new
    @vision = Vision.new
  end

  def create

   vision_gross_income = params[:vision_gross_income]
   vision_gross_income = vision_gross_income.gsub(/[^0-9\.]/, '').to_i
   vision_household_size = params[:vision_household_size].to_i
   case_management = params[:case_management]

    if  vision_gross_income.present? && vision_household_size.present?

      vision_eligibility = Vision.find_by({ :vision_household_size => params[:vision_household_size] })

      if vision_gross_income < vision_eligibility.vision_gross_income

        if case_management == 'yes'
          @eligible = true
        end
      else

      end
    end
  end

  def edit
    @vision = Vision.find(params[:id])
  end

  def update
    @vision = Vision.find(params[:id])

    @vision.vision_gross_income = params[:vision_gross_income]
    @vision.vision_household_size = params[:vision_household_size]

    if @vision.save
      redirect_to "/visions", :notice => "Vision updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @vision = Vision.find(params[:id])

    @vision.destroy

    redirect_to "/visions", :notice => "Vision deleted."
  end
end
