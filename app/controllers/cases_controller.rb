class CasesController < ApplicationController
  def index
    @cases = Case.order("created_at DESC").all
  end
end
