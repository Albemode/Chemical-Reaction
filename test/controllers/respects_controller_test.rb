require 'test_helper'

class RespectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @respect = respects(:one)
  end

  test "should get index" do
    get respects_url
    assert_response :success
  end

  test "should get new" do
    get new_respect_url
    assert_response :success
  end

  test "should create respect" do
    assert_difference('Respect.count') do
      post respects_url, params: { respect: {  } }
    end

    assert_redirected_to respect_url(Respect.last)
  end

  test "should show respect" do
    get respect_url(@respect)
    assert_response :success
  end

  test "should get edit" do
    get edit_respect_url(@respect)
    assert_response :success
  end

  test "should update respect" do
    patch respect_url(@respect), params: { respect: {  } }
    assert_redirected_to respect_url(@respect)
  end

  test "should destroy respect" do
    assert_difference('Respect.count', -1) do
      delete respect_url(@respect)
    end

    assert_redirected_to respects_url
  end
end
