require 'test_helper'

class TwofiveonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @twofiveone = twofiveones(:one)
  end

  test "should get index" do
    get twofiveones_url
    assert_response :success
  end

  test "should get new" do
    get new_twofiveone_url
    assert_response :success
  end

  test "should create twofiveone" do
    assert_difference('Twofiveone.count') do
      post twofiveones_url, params: { twofiveone: {  } }
    end

    assert_redirected_to twofiveone_url(Twofiveone.last)
  end

  test "should show twofiveone" do
    get twofiveone_url(@twofiveone)
    assert_response :success
  end

  test "should get edit" do
    get edit_twofiveone_url(@twofiveone)
    assert_response :success
  end

  test "should update twofiveone" do
    patch twofiveone_url(@twofiveone), params: { twofiveone: {  } }
    assert_redirected_to twofiveone_url(@twofiveone)
  end

  test "should destroy twofiveone" do
    assert_difference('Twofiveone.count', -1) do
      delete twofiveone_url(@twofiveone)
    end

    assert_redirected_to twofiveones_url
  end
end
