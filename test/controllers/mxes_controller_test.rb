require 'test_helper'

class MxesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mx = mxes(:one)
  end

  test "should get index" do
    get mxes_url
    assert_response :success
  end

  test "should get new" do
    get new_mx_url
    assert_response :success
  end

  test "should create mx" do
    assert_difference('Mxe.count') do
      post mxes_url, params: { mx: {  } }
    end

    assert_redirected_to mx_url(Mxe.last)
  end

  test "should show mx" do
    get mx_url(@mx)
    assert_response :success
  end

  test "should get edit" do
    get edit_mx_url(@mx)
    assert_response :success
  end

  test "should update mx" do
    patch mx_url(@mx), params: { mx: {  } }
    assert_redirected_to mx_url(@mx)
  end

  test "should destroy mx" do
    assert_difference('Mxe.count', -1) do
      delete mx_url(@mx)
    end

    assert_redirected_to mxes_url
  end
end
