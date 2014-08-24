class FamilyNutritionsController < ApplicationController
  def index
    @family_nutritions = FamilyNutrition.all
  end

  def show
    @family_nutrition = FamilyNutrition.find(params[:id])
  end

  def new
    @family_nutrition = FamilyNutrition.new
  end

  def create

    nutrition_gross_income = params[:nutrition_gross_income]
    nutrition_gross_income = nutrition_gross_income.gsub(/[^0-9\.]/, '').to_i
    nutrition_household_size = params[:nutrition_household_size].to_i

    if  nutrition_gross_income.present? && nutrition_household_size.present?

      nutrition_eligibility = FamilyNutrition.find_by({ :nutrition_household_size => params[:nutrition_household_size] })

      if nutrition_gross_income < nutrition_eligibility.nutrition_gross_income
        @eligible = true
      else

      end
    end
  end

  def edit
    @family_nutrition = FamilyNutrition.find(params[:id])
  end

  def update
    @family_nutrition = FamilyNutrition.find(params[:id])

    @family_nutrition.nutrition_gross_income = params[:nutrition_gross_income]
    @family_nutrition.nutrition_household_size = params[:nutrition_household_size]

    if @family_nutrition.save
      redirect_to "/family_nutritions", :notice => "Family nutrition updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @family_nutrition = FamilyNutrition.find(params[:id])

    @family_nutrition.destroy

    redirect_to "/family_nutritions", :notice => "Family nutrition deleted."
  end
end
