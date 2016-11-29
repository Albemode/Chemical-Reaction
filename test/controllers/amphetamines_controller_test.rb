require 'test_helper'

class AmphetaminesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @amphetamine = amphetamines(:one)
  end

  test "should get index" do
    get amphetamines_url
    assert_response :success
  end

  test "should get new" do
    get new_amphetamine_url
    assert_response :success
  end

  test "should create amphetamine" do
    assert_difference('Amphetamine.count') do
      post amphetamines_url, params: { amphetamine: {  } }
    end

    assert_redirected_to amphetamine_url(Amphetamine.last)
  end

  test "should show amphetamine" do
    get amphetamine_url(@amphetamine)
    assert_response :success
  end

  test "should get edit" do
    get edit_amphetamine_url(@amphetamine)
    assert_response :success
  end

  test "should update amphetamine" do
    patch amphetamine_url(@amphetamine), params: { amphetamine: {  } }
    assert_redirected_to amphetamine_url(@amphetamine)
  end

  test "should destroy amphetamine" do
    assert_difference('Amphetamine.count', -1) do
      delete amphetamine_url(@amphetamine)
    end

    assert_redirected_to amphetamines_url
  end
end
