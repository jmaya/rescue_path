class CasesController < ApplicationController
  def index
    @cases = Case.order("created_at DESC").all
  end

  def show
    @case = Case.find(params[:id])
    
  end
end
