require 'test_helper'

class TrustsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trust = trusts(:one)
  end

  test "should get index" do
    get trusts_url
    assert_response :success
  end

  test "should get new" do
    get new_trust_url
    assert_response :success
  end

  test "should create trust" do
    assert_difference('Trust.count') do
      post trusts_url, params: { trust: {  } }
    end

    assert_redirected_to trust_url(Trust.last)
  end

  test "should show trust" do
    get trust_url(@trust)
    assert_response :success
  end

  test "should get edit" do
    get edit_trust_url(@trust)
    assert_response :success
  end

  test "should update trust" do
    patch trust_url(@trust), params: { trust: {  } }
    assert_redirected_to trust_url(@trust)
  end

  test "should destroy trust" do
    assert_difference('Trust.count', -1) do
      delete trust_url(@trust)
    end

    assert_redirected_to trusts_url
  end
end
