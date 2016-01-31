class PeopleController < ApplicationController
  # Lists all Person objects
  def list
    @people = Person.all
  end
  
  # Show more details about a single Person object (non-editable)
  def show
    @person = Person.find(params[:id])
  end
  
  # Creates a new Person object
  def new
    @person = Person.new
  end
  
  # Creates a record of the new Person object in the database
  def create
    @person = Person.new(person_params)
    
    if @person.save
      redirect_to action: 'list'
    else
      render action: 'new'
    end
  end
  
  # Edit an existing Person object
  def edit
    @person = Person.find(params[:id])
  end
  
  # Updates the database with the edits
  def update
    @person = Person.find(params[:id])
    
    if @person.update_attributes(person_params)
      redirect_to action: 'show', :id => @person
    else
      render action: 'edit'
    end
  end
  
  # Deletes a Person object
  def delete
    Person.find(params[:id]).destroy
    redirect_to action: 'list'
  end
  
  private
    # Allow only white listed parameters
    def person_params
      params.require(:people).permit(:name, :weight, :height, :color)
    end
end
