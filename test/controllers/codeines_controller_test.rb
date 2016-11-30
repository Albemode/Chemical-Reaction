require 'test_helper'

class CodeinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @codeine = codeines(:one)
  end

  test "should get index" do
    get codeines_url
    assert_response :success
  end

  test "should get new" do
    get new_codeine_url
    assert_response :success
  end

  test "should create codeine" do
    assert_difference('Codeine.count') do
      post codeines_url, params: { codeine: {  } }
    end

    assert_redirected_to codeine_url(Codeine.last)
  end

  test "should show codeine" do
    get codeine_url(@codeine)
    assert_response :success
  end

  test "should get edit" do
    get edit_codeine_url(@codeine)
    assert_response :success
  end

  test "should update codeine" do
    patch codeine_url(@codeine), params: { codeine: {  } }
    assert_redirected_to codeine_url(@codeine)
  end

  test "should destroy codeine" do
    assert_difference('Codeine.count', -1) do
      delete codeine_url(@codeine)
    end

    assert_redirected_to codeines_url
  end
end
