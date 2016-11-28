require 'test_helper'

class SaddnessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @saddness = saddnesses(:one)
  end

  test "should get index" do
    get saddnesses_url
    assert_response :success
  end

  test "should get new" do
    get new_saddness_url
    assert_response :success
  end

  test "should create saddness" do
    assert_difference('Saddness.count') do
      post saddnesses_url, params: { saddness: {  } }
    end

    assert_redirected_to saddness_url(Saddness.last)
  end

  test "should show saddness" do
    get saddness_url(@saddness)
    assert_response :success
  end

  test "should get edit" do
    get edit_saddness_url(@saddness)
    assert_response :success
  end

  test "should update saddness" do
    patch saddness_url(@saddness), params: { saddness: {  } }
    assert_redirected_to saddness_url(@saddness)
  end

  test "should destroy saddness" do
    assert_difference('Saddness.count', -1) do
      delete saddness_url(@saddness)
    end

    assert_redirected_to saddnesses_url
  end
end
