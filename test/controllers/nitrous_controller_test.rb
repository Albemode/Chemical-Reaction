require 'test_helper'

class NitrousControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nitrou = nitrous(:one)
  end

  test "should get index" do
    get nitrous_url
    assert_response :success
  end

  test "should get new" do
    get new_nitrou_url
    assert_response :success
  end

  test "should create nitrou" do
    assert_difference('Nitrou.count') do
      post nitrous_url, params: { nitrou: {  } }
    end

    assert_redirected_to nitrou_url(Nitrou.last)
  end

  test "should show nitrou" do
    get nitrou_url(@nitrou)
    assert_response :success
  end

  test "should get edit" do
    get edit_nitrou_url(@nitrou)
    assert_response :success
  end

  test "should update nitrou" do
    patch nitrou_url(@nitrou), params: { nitrou: {  } }
    assert_redirected_to nitrou_url(@nitrou)
  end

  test "should destroy nitrou" do
    assert_difference('Nitrou.count', -1) do
      delete nitrou_url(@nitrou)
    end

    assert_redirected_to nitrous_url
  end
end
