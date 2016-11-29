require 'test_helper'

class ButylonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @butylone = butylones(:one)
  end

  test "should get index" do
    get butylones_url
    assert_response :success
  end

  test "should get new" do
    get new_butylone_url
    assert_response :success
  end

  test "should create butylone" do
    assert_difference('Butylone.count') do
      post butylones_url, params: { butylone: {  } }
    end

    assert_redirected_to butylone_url(Butylone.last)
  end

  test "should show butylone" do
    get butylone_url(@butylone)
    assert_response :success
  end

  test "should get edit" do
    get edit_butylone_url(@butylone)
    assert_response :success
  end

  test "should update butylone" do
    patch butylone_url(@butylone), params: { butylone: {  } }
    assert_redirected_to butylone_url(@butylone)
  end

  test "should destroy butylone" do
    assert_difference('Butylone.count', -1) do
      delete butylone_url(@butylone)
    end

    assert_redirected_to butylones_url
  end
end
