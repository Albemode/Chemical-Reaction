require 'test_helper'

class KetaminesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ketamine = ketamines(:one)
  end

  test "should get index" do
    get ketamines_url
    assert_response :success
  end

  test "should get new" do
    get new_ketamine_url
    assert_response :success
  end

  test "should create ketamine" do
    assert_difference('Ketamine.count') do
      post ketamines_url, params: { ketamine: {  } }
    end

    assert_redirected_to ketamine_url(Ketamine.last)
  end

  test "should show ketamine" do
    get ketamine_url(@ketamine)
    assert_response :success
  end

  test "should get edit" do
    get edit_ketamine_url(@ketamine)
    assert_response :success
  end

  test "should update ketamine" do
    patch ketamine_url(@ketamine), params: { ketamine: {  } }
    assert_redirected_to ketamine_url(@ketamine)
  end

  test "should destroy ketamine" do
    assert_difference('Ketamine.count', -1) do
      delete ketamine_url(@ketamine)
    end

    assert_redirected_to ketamines_url
  end
end
