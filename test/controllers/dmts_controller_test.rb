require 'test_helper'

class DmtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dmt = dmts(:one)
  end

  test "should get index" do
    get dmts_url
    assert_response :success
  end

  test "should get new" do
    get new_dmt_url
    assert_response :success
  end

  test "should create dmt" do
    assert_difference('Dmt.count') do
      post dmts_url, params: { dmt: {  } }
    end

    assert_redirected_to dmt_url(Dmt.last)
  end

  test "should show dmt" do
    get dmt_url(@dmt)
    assert_response :success
  end

  test "should get edit" do
    get edit_dmt_url(@dmt)
    assert_response :success
  end

  test "should update dmt" do
    patch dmt_url(@dmt), params: { dmt: {  } }
    assert_redirected_to dmt_url(@dmt)
  end

  test "should destroy dmt" do
    assert_difference('Dmt.count', -1) do
      delete dmt_url(@dmt)
    end

    assert_redirected_to dmts_url
  end
end
