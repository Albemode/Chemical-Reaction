require 'test_helper'

class ConfusionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @confusion = confusions(:one)
  end

  test "should get index" do
    get confusions_url
    assert_response :success
  end

  test "should get new" do
    get new_confusion_url
    assert_response :success
  end

  test "should create confusion" do
    assert_difference('Confusion.count') do
      post confusions_url, params: { confusion: {  } }
    end

    assert_redirected_to confusion_url(Confusion.last)
  end

  test "should show confusion" do
    get confusion_url(@confusion)
    assert_response :success
  end

  test "should get edit" do
    get edit_confusion_url(@confusion)
    assert_response :success
  end

  test "should update confusion" do
    patch confusion_url(@confusion), params: { confusion: {  } }
    assert_redirected_to confusion_url(@confusion)
  end

  test "should destroy confusion" do
    assert_difference('Confusion.count', -1) do
      delete confusion_url(@confusion)
    end

    assert_redirected_to confusions_url
  end
end
