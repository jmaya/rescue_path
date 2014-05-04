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
        User.all.each do |u|
          UserMailer.notification_email(u,@clue.case).deliver
        end
        format.html { redirect_to case_path(@clue.case), notice: 'The case was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def case_params
    params.require(:clue).permit(:info,:case_id)
  end

end
