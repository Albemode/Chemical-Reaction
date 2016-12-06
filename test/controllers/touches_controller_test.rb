require 'test_helper'

class TouchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @touch = touches(:one)
  end

  test "should get index" do
    get touches_url
    assert_response :success
  end

  test "should get new" do
    get new_touch_url
    assert_response :success
  end

  test "should create touch" do
    assert_difference('Touch.count') do
      post touches_url, params: { touch: {  } }
    end

    assert_redirected_to touch_url(Touch.last)
  end

  test "should show touch" do
    get touch_url(@touch)
    assert_response :success
  end

  test "should get edit" do
    get edit_touch_url(@touch)
    assert_response :success
  end

  test "should update touch" do
    patch touch_url(@touch), params: { touch: {  } }
    assert_redirected_to touch_url(@touch)
  end

  test "should destroy touch" do
    assert_difference('Touch.count', -1) do
      delete touch_url(@touch)
    end

    assert_redirected_to touches_url
  end
end
