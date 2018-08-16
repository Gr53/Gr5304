class PhotoPeopleController < ApplicationController
  before_action :set_photo_person, only: [:show, :update, :destroy]

  # GET /photo_people
  def index
    @photo_people = PhotoPerson.all

    render json: @photo_people
  end

  # GET /photo_people/1
  def show
    render json: @photo_person
  end

  # POST /photo_people
  def create
    @photo_person = PhotoPerson.new(photo_person_params)

    if @photo_person.save
      render json: @photo_person, status: :created, location: @photo_person
    else
      render json: @photo_person.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /photo_people/1
  def update
    if @photo_person.update(photo_person_params)
      render json: @photo_person
    else
      render json: @photo_person.errors, status: :unprocessable_entity
    end
  end

  # DELETE /photo_people/1
  def destroy
    @photo_person.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo_person
      @photo_person = PhotoPerson.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def photo_person_params
      params.require(:photo_person).permit(:photo_person)
    end
end
