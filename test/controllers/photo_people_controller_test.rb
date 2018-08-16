require 'test_helper'

class PhotoPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @photo_person = photo_people(:one)
  end

  test "should get index" do
    get photo_people_url, as: :json
    assert_response :success
  end

  test "should create photo_person" do
    assert_difference('PhotoPerson.count') do
      post photo_people_url, params: { photo_person: { photo_person: @photo_person.photo_person } }, as: :json
    end

    assert_response 201
  end

  test "should show photo_person" do
    get photo_person_url(@photo_person), as: :json
    assert_response :success
  end

  test "should update photo_person" do
    patch photo_person_url(@photo_person), params: { photo_person: { photo_person: @photo_person.photo_person } }, as: :json
    assert_response 200
  end

  test "should destroy photo_person" do
    assert_difference('PhotoPerson.count', -1) do
      delete photo_person_url(@photo_person), as: :json
    end

    assert_response 204
  end
end
