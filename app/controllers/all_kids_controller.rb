class AllKidsController < ApplicationController
  def index
    @all_kids = AllKid.all
  end

  def show
    @all_kid = AllKid.find(params[:id])
  end

  def new
    @all_kid = AllKid.new
  end

  def create

     # if the params hash contains a letter
    if params[:kids_household_size] !~ /\D/  # returns true if all numbers
      kids_household_size = params[:kids_household_size].to_i
    else
      kids_household_size = params[:kids_household_size].in_numbers
    end


    kids_gross_income = params[:kids_gross_income]
    kids_gross_income = kids_gross_income.gsub(/[^0-9\.]/, '').to_i

    if kids_gross_income !~ /\D/
      kids_gross_income = kids_gross_income.to_i
    else
      if kids_gross_income.include?("dollars")
        kids_gross_income.slice!"dollars"
      end
      kids_gross_income = kids_gross_income.in_numbers
    end

    if params[:pregnant] == 'yes'
      kids_household_size = kids_household_size + 1
    end

    if kids_gross_income.present? && kids_household_size.present?

      kids_eligibility = AllKid.find_by({ :kids_household_size => kids_household_size })

       p "kids_gross_income = #{kids_gross_income}"

       if kids_gross_income < kids_eligibility.premium_1_gross_income
         @eligible = true
       end

       if @eligible ==   true
        # now find out which version they are eligible for
        if kids_gross_income <= kids_eligibility.assist_gross_income
          @assist_eligible = true
        elsif kids_gross_income <= kids_eligibility.share_gross_income && kids_gross_income > kids_eligibility.assist_gross_income
          @share_eligible = true
        elsif kids_gross_income <= kids_eligibility.premium_1_gross_income && kids_gross_income > kids_eligibility.share_gross_income
          @premium1_eligible = true
        end
       end

          #this is the logic for premium 2


        if kids_gross_income <= kids_eligibility.premium_2_gross_income && kids_gross_income > kids_eligibility.premium_1_gross_income
            if params["status"] == 'none'
               @eligible = false
            else
              @eligible = true
              @premium2_eligible = true
            end

        end

        if kids_gross_income > kids_eligibility.premium_2_gross_income
          @eligible = false
        end

        if kids_household_size == 1
          @eligible = false
        end

    end
    end

  def edit
    @all_kid = AllKid.find(params[:id])
  end

  def update
    @all_kid = AllKid.find(params[:id])

    @all_kid.kids_household_size = params[:kids_household_size]
    @all_kid.assist_gross_income = params[:assist_gross_income]
    @all_kid.share_gross_income = params[:share_gross_income]
    @all_kid.premium_1_gross_income = params[:premium_1_gross_income]
    @all_kid.premium_2_gross_income = params[:premium_2_gross_income]

    if @all_kid.save
      redirect_to "/all_kids", :notice => "All kid updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @all_kid = AllKid.find(params[:id])

    @all_kid.destroy

    redirect_to "/all_kids", :notice => "All kid deleted."
  end
end
