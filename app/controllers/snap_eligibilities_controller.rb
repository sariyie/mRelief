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
    age = params[:age].to_i
    snap_dependent_no = params[:snap_dependent_no].to_i
    snap_gross_income = params[:snap_gross_income]
    snap_gross_income = snap_gross_income.gsub(/[^0-9\.]/, '').to_i

    if age.present? && snap_gross_income.present? && snap_dependent_no.present?

       if age <= 59
         snap_eligibility = SnapEligibility.find_by({ :snap_dependent_no => params[:snap_dependent_no] })
       else
         snap_eligibility = SnapEligibilitySenior.find_by({ :snap_dependent_no => params[:snap_dependent_no] })
       end

       p "snap_gross_income = #{snap_gross_income}"
       p "snap_eligibility.snap_gross_income = #{snap_eligibility.snap_gross_income}"

       if snap_gross_income < snap_eligibility.snap_gross_income
         # @yes = "Based on your household size and income, you likely qualify for food stamps. Enter your zipcode <a href=\"http://abe.illinois.gov\">here</a> to further determine your eligibility and apply for foodstamps.""Based on your household size and income, you likely qualify for food stamps. Enter your zipcode <a href=\"http://abe.illinois.gov\">here</a> to further determine your eligibility and apply for foodstamps."
         @eligible = true
       else

          # @status = "Based on your household size and income, you likely do not qualify for food stamps."
          # @status = "Based on your household size and income, you likely do not qualify for food stamps.
          # If you need food assistance, text FOOD to 877-877 to see a summer meal site near you."
       end
     else
       redirect_to :back, :notice => "All fields are required."
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
