require 'test_helper'

class PainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pain = pains(:one)
  end

  test "should get index" do
    get pains_url
    assert_response :success
  end

  test "should get new" do
    get new_pain_url
    assert_response :success
  end

  test "should create pain" do
    assert_difference('Pain.count') do
      post pains_url, params: { pain: {  } }
    end

    assert_redirected_to pain_url(Pain.last)
  end

  test "should show pain" do
    get pain_url(@pain)
    assert_response :success
  end

  test "should get edit" do
    get edit_pain_url(@pain)
    assert_response :success
  end

  test "should update pain" do
    patch pain_url(@pain), params: { pain: {  } }
    assert_redirected_to pain_url(@pain)
  end

  test "should destroy pain" do
    assert_difference('Pain.count', -1) do
      delete pain_url(@pain)
    end

    assert_redirected_to pains_url
  end
end
