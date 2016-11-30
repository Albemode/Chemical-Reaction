require 'test_helper'

class PoppersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @popper = poppers(:one)
  end

  test "should get index" do
    get poppers_url
    assert_response :success
  end

  test "should get new" do
    get new_popper_url
    assert_response :success
  end

  test "should create popper" do
    assert_difference('Popper.count') do
      post poppers_url, params: { popper: {  } }
    end

    assert_redirected_to popper_url(Popper.last)
  end

  test "should show popper" do
    get popper_url(@popper)
    assert_response :success
  end

  test "should get edit" do
    get edit_popper_url(@popper)
    assert_response :success
  end

  test "should update popper" do
    patch popper_url(@popper), params: { popper: {  } }
    assert_redirected_to popper_url(@popper)
  end

  test "should destroy popper" do
    assert_difference('Popper.count', -1) do
      delete popper_url(@popper)
    end

    assert_redirected_to poppers_url
  end
end
