require 'test_helper'

class HearsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hear = hears(:one)
  end

  test "should get index" do
    get hears_url
    assert_response :success
  end

  test "should get new" do
    get new_hear_url
    assert_response :success
  end

  test "should create hear" do
    assert_difference('Hear.count') do
      post hears_url, params: { hear: {  } }
    end

    assert_redirected_to hear_url(Hear.last)
  end

  test "should show hear" do
    get hear_url(@hear)
    assert_response :success
  end

  test "should get edit" do
    get edit_hear_url(@hear)
    assert_response :success
  end

  test "should update hear" do
    patch hear_url(@hear), params: { hear: {  } }
    assert_redirected_to hear_url(@hear)
  end

  test "should destroy hear" do
    assert_difference('Hear.count', -1) do
      delete hear_url(@hear)
    end

    assert_redirected_to hears_url
  end
end
