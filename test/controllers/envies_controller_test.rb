require 'test_helper'

class EnviesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @envy = envies(:one)
  end

  test "should get index" do
    get envies_url
    assert_response :success
  end

  test "should get new" do
    get new_envy_url
    assert_response :success
  end

  test "should create envy" do
    assert_difference('Envie.count') do
      post envies_url, params: { envy: {  } }
    end

    assert_redirected_to envy_url(Envie.last)
  end

  test "should show envy" do
    get envy_url(@envy)
    assert_response :success
  end

  test "should get edit" do
    get edit_envy_url(@envy)
    assert_response :success
  end

  test "should update envy" do
    patch envy_url(@envy), params: { envy: {  } }
    assert_redirected_to envy_url(@envy)
  end

  test "should destroy envy" do
    assert_difference('Envie.count', -1) do
      delete envy_url(@envy)
    end

    assert_redirected_to envies_url
  end
end
