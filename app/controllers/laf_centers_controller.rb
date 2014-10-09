require 'roo'
class LafCentersController < ApplicationController

  def index

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


end
