class LocationPeopleController < ApplicationController
  before_action :set_location_person, only: [:show, :update, :destroy]

  # GET /location_people
  def index
    @location_people = LocationPerson.all

    render json: @location_people
  end

  # GET /location_people/1
  def show
    render json: @location_person
  end

  # POST /location_people
  def create
    @location_person = LocationPerson.new(location_person_params)

    if @location_person.save
      render json: @location_person, status: :created, location: @location_person
    else
      render json: @location_person.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /location_people/1
  def update
    if @location_person.update(location_person_params)
      render json: @location_person
    else
      render json: @location_person.errors, status: :unprocessable_entity
    end
  end

  # DELETE /location_people/1
  def destroy
    @location_person.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location_person
      @location_person = LocationPerson.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def location_person_params
      params.require(:location_person).permit(:location_person)
    end
end
