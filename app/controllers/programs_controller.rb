class ProgramsController < ApplicationController

  def index
    @programs = Program.all
  end

end
