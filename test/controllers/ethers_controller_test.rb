require 'test_helper'

class EthersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ether = ethers(:one)
  end

  test "should get index" do
    get ethers_url
    assert_response :success
  end

  test "should get new" do
    get new_ether_url
    assert_response :success
  end

  test "should create ether" do
    assert_difference('Ether.count') do
      post ethers_url, params: { ether: {  } }
    end

    assert_redirected_to ether_url(Ether.last)
  end

  test "should show ether" do
    get ether_url(@ether)
    assert_response :success
  end

  test "should get edit" do
    get edit_ether_url(@ether)
    assert_response :success
  end

  test "should update ether" do
    patch ether_url(@ether), params: { ether: {  } }
    assert_redirected_to ether_url(@ether)
  end

  test "should destroy ether" do
    assert_difference('Ether.count', -1) do
      delete ether_url(@ether)
    end

    assert_redirected_to ethers_url
  end
end
