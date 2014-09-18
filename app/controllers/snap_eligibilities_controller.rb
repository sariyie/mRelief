class SnapEligibilitiesController < ApplicationController

require 'numbers_in_words'
require 'numbers_in_words/duck_punch' #see why later

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
    # this is the words into numbers logic
    if params[:snap_dependent_no] !~ /\D/  # returns true if all numbers
      snap_dependent_no = params[:snap_dependent_no].to_i
    else
      snap_dependent_no = params[:snap_dependent_no].in_numbers
    end

    if params[:age] !~ /\D/
      age = params[:age].to_i
    else
      age = params[:age].in_numbers
    end

    snap_gross_income = params[:snap_gross_income]
    snap_gross_income = snap_gross_income.gsub(/[^0-9\.]/, '')

    if snap_gross_income !~ /\D/
      snap_gross_income = snap_gross_income.to_i
    else
      if snap_gross_income.include?("dollars")
        snap_gross_income.slice!"dollars"
      end
      snap_gross_income = snap_gross_income.in_numbers
    end

    # this is the logic for everything except disability
     age.present? && snap_gross_income.present? && snap_dependent_no.present?

        if params[:education]  == 'no' && params[:citizen] == 'yes'

            if age <= 59
              snap_eligibility = SnapEligibility.find_by({ :snap_dependent_no => snap_dependent_no })
            else
              snap_eligibility = SnapEligibilitySenior.find_by({ :snap_dependent_no => snap_dependent_no})
            end

            p "snap_gross_income = #{snap_gross_income}"
            p "snap_eligibility.snap_gross_income = #{snap_eligibility.snap_gross_income}"

            if snap_gross_income < snap_eligibility.snap_gross_income
              @eligible = "yes"
            else
               @eligible = "no"
            end

        elsif params[:education]  == 'yes'
          @eligible = 'maybe'
        elsif params[:citizen] == 'no'
          @eligible = 'maybe'
        end

      # this is the logic for disability
      if params[:disabled].present?

        if params[:disabled] != 'none'
          snap_eligibility = SnapEligibilitySenior.find_by({ :snap_dependent_no => snap_dependent_no})
        else
          snap_eligibility = SnapEligibility.find_by({ :snap_dependent_no => snap_dependent_no })
        end

           p "snap_gross_income = #{snap_gross_income}"
            p "snap_eligibility.snap_gross_income = #{snap_eligibility.snap_gross_income}"

            if snap_gross_income < snap_eligibility.snap_gross_income
              @eligible = "yes"
            else
               @eligible = "no"
            end

            if params[:education]  == 'yes'
              @eligible = 'maybe'
            elsif params[:citizen] == 'no'
              @eligible = 'maybe'
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

end


#   def create

#     # if the params hash contains a letter
#     if params[:snap_dependent_no] !~ /\D/  # returns true if all numbers
#       snap_dependent_no = params[:snap_dependent_no].to_i
#     else
#       snap_dependent_no = params[:snap_dependent_no].in_numbers
#     end

#     if params[:age] !~ /\D/
#       age = params[:age].to_i
#     else
#       age = params[:age].in_numbers
#     end

#     snap_gross_income = params[:snap_gross_income]
#     snap_gross_income = snap_gross_income.gsub(/[^0-9\.]/, '')


#     if snap_gross_income !~ /\D/
#       snap_gross_income = snap_gross_income.to_i
#     else
#       if snap_gross_income.include?("dollars")
#         snap_gross_income.slice!"dollars"
#       end
#       snap_gross_income = snap_gross_income.in_numbers
#     end



#     if age.present? && snap_gross_income.present? && snap_dependent_no.present?



#       # if params[:education] == 'no'

#            if age <= 59
#              snap_eligibility = SnapEligibility.find_by({ :snap_dependent_no => snap_dependent_no })
#            else
#              snap_eligibility = SnapEligibilitySenior.find_by({ :snap_dependent_no => snap_dependent_no})
#            end

#             p "snap_gross_income = #{snap_gross_income}"
#             p "snap_eligibility.snap_gross_income = #{snap_eligibility.snap_gross_income}"

#            if snap_gross_income < snap_eligibility.snap_gross_income
#              @eligible
#            else
#             #@eligible = "no"
#            end
#       # end

#        # if params[:education]  == 'yes'

#        #   @eligible = "maybe"

#        #  end


#      else
#        redirect_to :back, :notice => "All fields are required."
#      end


#   end

#   def edit
#     @snap_eligibility = SnapEligibility.find(params[:id])
#   end

#   def update
#     @snap_eligibility = SnapEligibility.find(params[:id])

#     @snap_eligibility.snap_dependent_no = params[:snap_dependent_no]
#     @snap_eligibility.snap_gross_income = params[:snap_gross_income]


#     if @snap_eligibility.save
#       redirect_to "/snap_eligibilities", :notice => "Snap eligibility updated successfully."
#     else
#       render 'edit'
#     end
#   end

#   def destroy
#     @snap_eligibility = SnapEligibility.find(params[:id])

#     @snap_eligibility.destroy

#     redirect_to "/snap_eligibilities", :notice => "Snap eligibility deleted."
#   end

# end

