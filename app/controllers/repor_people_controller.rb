class ReporPeopleController < ApplicationController
  before_action :set_repor_person, only: [:show, :update, :destroy]

  # GET /repor_people
  def index
    @repor_people = ReporPerson.all

    render json: @repor_people
  end

  # GET /repor_people/1
  def show
    render json: @repor_person
  end

  # POST /repor_people
  def create
    @repor_person = ReporPerson.new(repor_person_params)

    if @repor_person.save
      render json: @repor_person, status: :created, location: @repor_person
    else
      render json: @repor_person.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /repor_people/1
  def update
    if @repor_person.update(repor_person_params)
      render json: @repor_person
    else
      render json: @repor_person.errors, status: :unprocessable_entity
    end
  end

  # DELETE /repor_people/1
  def destroy
    @repor_person.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repor_person
      @repor_person = ReporPerson.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def repor_person_params
      params.require(:repor_person).permit(:repor_person)
    end
end
