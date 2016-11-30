require 'test_helper'

class ThcsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @thc = thcs(:one)
  end

  test "should get index" do
    get thcs_url
    assert_response :success
  end

  test "should get new" do
    get new_thc_url
    assert_response :success
  end

  test "should create thc" do
    assert_difference('Thc.count') do
      post thcs_url, params: { thc: {  } }
    end

    assert_redirected_to thc_url(Thc.last)
  end

  test "should show thc" do
    get thc_url(@thc)
    assert_response :success
  end

  test "should get edit" do
    get edit_thc_url(@thc)
    assert_response :success
  end

  test "should update thc" do
    patch thc_url(@thc), params: { thc: {  } }
    assert_redirected_to thc_url(@thc)
  end

  test "should destroy thc" do
    assert_difference('Thc.count', -1) do
      delete thc_url(@thc)
    end

    assert_redirected_to thcs_url
  end
end
