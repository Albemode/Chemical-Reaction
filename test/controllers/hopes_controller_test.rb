require 'test_helper'

class HopesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hope = hopes(:one)
  end

  test "should get index" do
    get hopes_url
    assert_response :success
  end

  test "should get new" do
    get new_hope_url
    assert_response :success
  end

  test "should create hope" do
    assert_difference('Hope.count') do
      post hopes_url, params: { hope: {  } }
    end

    assert_redirected_to hope_url(Hope.last)
  end

  test "should show hope" do
    get hope_url(@hope)
    assert_response :success
  end

  test "should get edit" do
    get edit_hope_url(@hope)
    assert_response :success
  end

  test "should update hope" do
    patch hope_url(@hope), params: { hope: {  } }
    assert_redirected_to hope_url(@hope)
  end

  test "should destroy hope" do
    assert_difference('Hope.count', -1) do
      delete hope_url(@hope)
    end

    assert_redirected_to hopes_url
  end
end
