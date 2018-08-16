require 'test_helper'

class ReporPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @repor_person = repor_people(:one)
  end

  test "should get index" do
    get repor_people_url, as: :json
    assert_response :success
  end

  test "should create repor_person" do
    assert_difference('ReporPerson.count') do
      post repor_people_url, params: { repor_person: { repor_person: @repor_person.repor_person } }, as: :json
    end

    assert_response 201
  end

  test "should show repor_person" do
    get repor_person_url(@repor_person), as: :json
    assert_response :success
  end

  test "should update repor_person" do
    patch repor_person_url(@repor_person), params: { repor_person: { repor_person: @repor_person.repor_person } }, as: :json
    assert_response 200
  end

  test "should destroy repor_person" do
    assert_difference('ReporPerson.count', -1) do
      delete repor_person_url(@repor_person), as: :json
    end

    assert_response 204
  end
end
