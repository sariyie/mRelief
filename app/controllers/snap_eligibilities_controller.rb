class SnapEligibilitiesController < ApplicationController

require 'numbers_in_words'
require 'numbers_in_words/duck_punch' #see why later



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


end



