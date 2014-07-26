class SnapEligibilitiesController < ApplicationController
  def index
    @snap_eligibilities = SnapEligibility.all
  end

  def show
    @snap_eligibility = SnapEligibility.find(params[:id])
  end

  def new
    @snap_eligibility = SnapEligibility.new
  end

  def create
    @snap_eligibility = SnapEligibility.new
    age = params[:age].to_i
    snap_dependent_no = params[:snap_dependent_no]
    snap_gross_income = params[:snap_gross_income].to_i

    dependents = SnapEligibility.find_by(params[:snap_dependent_no])
    senior_dependents = SnapEligibilitySenior.find_by(params[:snap_dependent_no])

    if age.present? && age <= 59
      if snap_gross_income && snap_gross_income < dependents.snap_gross_income
        @status = "Based on your household size and income, you likely qualify for food stamps."
      else
         @status = "Based on your household size and income, you likely do not qualify for food stamps.
         If you need food assistance text FOOD to 877-877, to see a summer meal site near you."
      end

    else
      if snap_gross_income && snap_gross_income < senior_dependents.snap_gross_income
        @status = "Based on your household size and income, you likely qualify for food stamps."
      else
        @status = "Based on your household size and income, you likely do not qualify for food stamps."
      end

    end
  end

  def edit
    @snap_eligibility = SnapEligibility.find(params[:id])
  end

  def update
    @snap_eligibility = SnapEligibility.find(params[:id])

    @snap_eligibility.snap_dependent_no = params[:snap_dependent_no]
    @snap_eligibility.snap_gross_income = params[:snap_gross_income]


    if @snap_eligibility.save
      redirect_to "/snap_eligibilities", :notice => "Snap eligibility updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @snap_eligibility = SnapEligibility.find(params[:id])

    @snap_eligibility.destroy

    redirect_to "/snap_eligibilities", :notice => "Snap eligibility deleted."
  end

  def about_us

  end

  def contact_us

  end

  def what_is_snap

  end
  def how_mrelief_works

  end
end
