class LafCentersController < ApplicationController


  def index
     require 'roo'
    #@laf_centers = LafCenter.all
     ex = Roo::Excel.new("public/LAF_Spreadsheet.xls")
     ex.default_sheet = ex.sheets[0]
     2.upto(67) do | line |
     zipcode = ex.cell(line,'A')
     city = ex.cell(line,'B')
     center = ex.cell(line,'C')
     address = ex.cell(line,'D')
     contact = ex.cell(line,'E')
     telephone = ex.cell(line,'F')
     spanish = ex.cell(line,'G')

      @laf_center = LafCenter.create(:zipcode => zipcode, :city => city, :center => center, :address => address, :contact => contact,
      :telephone => telephone, :spanish => spanish)
   end
  end

  def show
    @laf_center = LafCenter.find(params[:id])
  end

  def new
    @laf_center = LafCenter.new
  end

  def create

    # ex = Roo::Excel.new("public/LAF_Spreadsheet.xls")
    #  ex.default_sheet = ex.sheets[0]    # This is the Excel sheet number (0 is the first sheet, 1 is second sheet, etc.)
    #  2.upto(500) do | line |            # Start and end of rows you want to include from that sheet
    #  zipcode = ex.cell(line,'A')           # Column A in spreadsheet
    #  city = ex.cell(line,'B')
    #  center = ex.cell(line,'C')
    #  address = ex.cell(line,'D')
    #  contact = ex.cell(line,'E')
    #  telephone = ex.cell(line,'F')
    #  spanish = ex.cell(line,'G')

    #  @user = LafCenter.create(:zipcode => zipcode, :city => city, :center => center, :address => address, :contact => contact,
    #   :telephone => telephone, :spanish => spanish)


  end

  def edit
    @laf_center = LafCenter.find(params[:id])
  end

  def update
    @laf_center = LafCenter.find(params[:id])

    @laf_center.zipcode = params[:zipcode]
    @laf_center.city = params[:city]
    @laf_center.center = params[:center]
    @laf_center.address = params[:address]
    @laf_center.contact = params[:contact]
    @laf_center.telephone = params[:telephone]
    @laf_center.spanish = params[:spanish]

    if @laf_center.save
      redirect_to "/laf_centers", :notice => "Laf center updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @laf_center = LafCenter.find(params[:id])

    @laf_center.destroy

    redirect_to "/laf_centers", :notice => "Laf center deleted."
  end
end
