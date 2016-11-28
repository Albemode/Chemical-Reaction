require 'test_helper'

class HopensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hopen = hopens(:one)
  end

  test "should get index" do
    get hopens_url
    assert_response :success
  end

  test "should get new" do
    get new_hopen_url
    assert_response :success
  end

  test "should create hopen" do
    assert_difference('Hopen.count') do
      post hopens_url, params: { hopen: {  } }
    end

    assert_redirected_to hopen_url(Hopen.last)
  end

  test "should show hopen" do
    get hopen_url(@hopen)
    assert_response :success
  end

  test "should get edit" do
    get edit_hopen_url(@hopen)
    assert_response :success
  end

  test "should update hopen" do
    patch hopen_url(@hopen), params: { hopen: {  } }
    assert_redirected_to hopen_url(@hopen)
  end

  test "should destroy hopen" do
    assert_difference('Hopen.count', -1) do
      delete hopen_url(@hopen)
    end

    assert_redirected_to hopens_url
  end
end
