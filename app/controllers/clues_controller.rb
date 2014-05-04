class CluesController < ApplicationController
  before_action :authenticate_user!

  def new
    @clue = Clue.new
  end

  def create
    @clue = Clue.new(case_params)
    @clue.user = current_user

    respond_to do |format|
      if @clue.save
        format.html { redirect_to root_path, notice: 'The case was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def case_params
    params.require(:clue).permit(:info,:case_id)
  end

end
