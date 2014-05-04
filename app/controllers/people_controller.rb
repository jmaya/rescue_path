class PeopleController < ApplicationController
  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)

    respond_to do |format|
      if @person.save
        @case = Case.create(case_identifier:rand(600000), person:@person, user:current_user, notes:@person.notes)
        @case.save
        @clue = Clue.create(info:@person.notes, user:current_user, case:@case)
        format.html { redirect_to root_path, notice: 'The Person was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def person_params
    params.require(:person).permit(:first_name,:last_name,:age,:hair_color,:eye_color,:height,:weight,
                                   :race,:visual_characteristics,:sex,:last_seen_location,:last_seen_date,
                                   :notes,:build_type,:relationship_to_submitter,:image_url)
  end
end
