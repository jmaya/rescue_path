class PeopleController < ApplicationController
  def new
    @person = Person.new

  end

  def create
    @person = Person.new(person_params)
    respond_to do |format|
      if @person.save
        format.html { redirect_to root_path, notice: 'The Person was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def person_params
    params.require(:person).permit(:first_name,:last_name,:age,:hair_color,:eye_color,:height,:weight,
                                   :race,:visual_characteristics,:sex,:last_seen_location,:last_seen_date,
                                   :notes,:build_type,:relationship_to_submitter)
  end
end
