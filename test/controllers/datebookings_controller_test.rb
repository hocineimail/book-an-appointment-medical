require 'test_helper'

class DatebookingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @datebooking = datebookings(:one)
  end

  test "should get index" do
    get datebookings_url
    assert_response :success
  end

  test "should get new" do
    get new_datebooking_url
    assert_response :success
  end

  test "should create datebooking" do
    assert_difference('Datebooking.count') do
      post datebookings_url, params: { datebooking: { date: @datebooking.date, etat: @datebooking.etat } }
    end

    assert_redirected_to datebooking_url(Datebooking.last)
  end

  test "should show datebooking" do
    get datebooking_url(@datebooking)
    assert_response :success
  end

  test "should get edit" do
    get edit_datebooking_url(@datebooking)
    assert_response :success
  end

  test "should update datebooking" do
    patch datebooking_url(@datebooking), params: { datebooking: { date: @datebooking.date, etat: @datebooking.etat } }
    assert_redirected_to datebooking_url(@datebooking)
  end

  test "should destroy datebooking" do
    assert_difference('Datebooking.count', -1) do
      delete datebooking_url(@datebooking)
    end

    assert_redirected_to datebookings_url
  end
end
