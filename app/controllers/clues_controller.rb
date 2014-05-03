class CluesController < ApplicationController
  before_action :authenticate_user!

  def new
    @clue = Clue.new
  end
  def create
  end

end
