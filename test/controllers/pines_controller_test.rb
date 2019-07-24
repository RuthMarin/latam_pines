require 'test_helper'

class PinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pine = pines(:one)
  end

  test "should get index" do
    get pines_url
    assert_response :success
  end

  test "should get new" do
    get new_pine_url
    assert_response :success
  end

  test "should create pine" do
    assert_difference('Pine.count') do
      post pines_url, params: { pine: { descripcin: @pine.descripcin, foto: @pine.foto, likes: @pine.likes, nombre: @pine.nombre } }
    end

    assert_redirected_to pine_url(Pine.last)
  end

  test "should show pine" do
    get pine_url(@pine)
    assert_response :success
  end

  test "should get edit" do
    get edit_pine_url(@pine)
    assert_response :success
  end

  test "should update pine" do
    patch pine_url(@pine), params: { pine: { descripcin: @pine.descripcin, foto: @pine.foto, likes: @pine.likes, nombre: @pine.nombre } }
    assert_redirected_to pine_url(@pine)
  end

  test "should destroy pine" do
    assert_difference('Pine.count', -1) do
      delete pine_url(@pine)
    end

    assert_redirected_to pines_url
  end
end
