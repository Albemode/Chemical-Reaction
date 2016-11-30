require 'test_helper'

class MdamasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mdama = mdamas(:one)
  end

  test "should get index" do
    get mdamas_url
    assert_response :success
  end

  test "should get new" do
    get new_mdama_url
    assert_response :success
  end

  test "should create mdama" do
    assert_difference('Mdama.count') do
      post mdamas_url, params: { mdama: {  } }
    end

    assert_redirected_to mdama_url(Mdama.last)
  end

  test "should show mdama" do
    get mdama_url(@mdama)
    assert_response :success
  end

  test "should get edit" do
    get edit_mdama_url(@mdama)
    assert_response :success
  end

  test "should update mdama" do
    patch mdama_url(@mdama), params: { mdama: {  } }
    assert_redirected_to mdama_url(@mdama)
  end

  test "should destroy mdama" do
    assert_difference('Mdama.count', -1) do
      delete mdama_url(@mdama)
    end

    assert_redirected_to mdamas_url
  end
end
