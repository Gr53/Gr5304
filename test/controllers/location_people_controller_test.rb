require 'test_helper'

class LocationPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @location_person = location_people(:one)
  end

  test "should get index" do
    get location_people_url, as: :json
    assert_response :success
  end

  test "should create location_person" do
    assert_difference('LocationPerson.count') do
      post location_people_url, params: { location_person: { location_person: @location_person.location_person } }, as: :json
    end

    assert_response 201
  end

  test "should show location_person" do
    get location_person_url(@location_person), as: :json
    assert_response :success
  end

  test "should update location_person" do
    patch location_person_url(@location_person), params: { location_person: { location_person: @location_person.location_person } }, as: :json
    assert_response 200
  end

  test "should destroy location_person" do
    assert_difference('LocationPerson.count', -1) do
      delete location_person_url(@location_person), as: :json
    end

    assert_response 204
  end
end
