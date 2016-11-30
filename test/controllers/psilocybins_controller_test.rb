require 'test_helper'

class PsilocybinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @psilocybin = psilocybins(:one)
  end

  test "should get index" do
    get psilocybins_url
    assert_response :success
  end

  test "should get new" do
    get new_psilocybin_url
    assert_response :success
  end

  test "should create psilocybin" do
    assert_difference('Psilocybin.count') do
      post psilocybins_url, params: { psilocybin: {  } }
    end

    assert_redirected_to psilocybin_url(Psilocybin.last)
  end

  test "should show psilocybin" do
    get psilocybin_url(@psilocybin)
    assert_response :success
  end

  test "should get edit" do
    get edit_psilocybin_url(@psilocybin)
    assert_response :success
  end

  test "should update psilocybin" do
    patch psilocybin_url(@psilocybin), params: { psilocybin: {  } }
    assert_redirected_to psilocybin_url(@psilocybin)
  end

  test "should destroy psilocybin" do
    assert_difference('Psilocybin.count', -1) do
      delete psilocybin_url(@psilocybin)
    end

    assert_redirected_to psilocybins_url
  end
end
