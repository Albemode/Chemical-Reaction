require 'test_helper'

class AnticipationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @anticipation = anticipations(:one)
  end

  test "should get index" do
    get anticipations_url
    assert_response :success
  end

  test "should get new" do
    get new_anticipation_url
    assert_response :success
  end

  test "should create anticipation" do
    assert_difference('Anticipation.count') do
      post anticipations_url, params: { anticipation: {  } }
    end

    assert_redirected_to anticipation_url(Anticipation.last)
  end

  test "should show anticipation" do
    get anticipation_url(@anticipation)
    assert_response :success
  end

  test "should get edit" do
    get edit_anticipation_url(@anticipation)
    assert_response :success
  end

  test "should update anticipation" do
    patch anticipation_url(@anticipation), params: { anticipation: {  } }
    assert_redirected_to anticipation_url(@anticipation)
  end

  test "should destroy anticipation" do
    assert_difference('Anticipation.count', -1) do
      delete anticipation_url(@anticipation)
    end

    assert_redirected_to anticipations_url
  end
end
