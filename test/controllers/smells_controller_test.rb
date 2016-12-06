require 'test_helper'

class SmellsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @smell = smells(:one)
  end

  test "should get index" do
    get smells_url
    assert_response :success
  end

  test "should get new" do
    get new_smell_url
    assert_response :success
  end

  test "should create smell" do
    assert_difference('Smell.count') do
      post smells_url, params: { smell: {  } }
    end

    assert_redirected_to smell_url(Smell.last)
  end

  test "should show smell" do
    get smell_url(@smell)
    assert_response :success
  end

  test "should get edit" do
    get edit_smell_url(@smell)
    assert_response :success
  end

  test "should update smell" do
    patch smell_url(@smell), params: { smell: {  } }
    assert_redirected_to smell_url(@smell)
  end

  test "should destroy smell" do
    assert_difference('Smell.count', -1) do
      delete smell_url(@smell)
    end

    assert_redirected_to smells_url
  end
end
