require 'test_helper'

class FearsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fear = fears(:one)
  end

  test "should get index" do
    get fears_url
    assert_response :success
  end

  test "should get new" do
    get new_fear_url
    assert_response :success
  end

  test "should create fear" do
    assert_difference('Fear.count') do
      post fears_url, params: { fear: {  } }
    end

    assert_redirected_to fear_url(Fear.last)
  end

  test "should show fear" do
    get fear_url(@fear)
    assert_response :success
  end

  test "should get edit" do
    get edit_fear_url(@fear)
    assert_response :success
  end

  test "should update fear" do
    patch fear_url(@fear), params: { fear: {  } }
    assert_redirected_to fear_url(@fear)
  end

  test "should destroy fear" do
    assert_difference('Fear.count', -1) do
      delete fear_url(@fear)
    end

    assert_redirected_to fears_url
  end
end
