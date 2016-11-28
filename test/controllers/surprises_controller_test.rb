require 'test_helper'

class SurprisesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @surprise = surprises(:one)
  end

  test "should get index" do
    get surprises_url
    assert_response :success
  end

  test "should get new" do
    get new_surprise_url
    assert_response :success
  end

  test "should create surprise" do
    assert_difference('Surprise.count') do
      post surprises_url, params: { surprise: {  } }
    end

    assert_redirected_to surprise_url(Surprise.last)
  end

  test "should show surprise" do
    get surprise_url(@surprise)
    assert_response :success
  end

  test "should get edit" do
    get edit_surprise_url(@surprise)
    assert_response :success
  end

  test "should update surprise" do
    patch surprise_url(@surprise), params: { surprise: {  } }
    assert_redirected_to surprise_url(@surprise)
  end

  test "should destroy surprise" do
    assert_difference('Surprise.count', -1) do
      delete surprise_url(@surprise)
    end

    assert_redirected_to surprises_url
  end
end
