require 'test_helper'

class AngersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @anger = angers(:one)
  end

  test "should get index" do
    get angers_url
    assert_response :success
  end

  test "should get new" do
    get new_anger_url
    assert_response :success
  end

  test "should create anger" do
    assert_difference('Anger.count') do
      post angers_url, params: { anger: {  } }
    end

    assert_redirected_to anger_url(Anger.last)
  end

  test "should show anger" do
    get anger_url(@anger)
    assert_response :success
  end

  test "should get edit" do
    get edit_anger_url(@anger)
    assert_response :success
  end

  test "should update anger" do
    patch anger_url(@anger), params: { anger: {  } }
    assert_redirected_to anger_url(@anger)
  end

  test "should destroy anger" do
    assert_difference('Anger.count', -1) do
      delete anger_url(@anger)
    end

    assert_redirected_to angers_url
  end
end
