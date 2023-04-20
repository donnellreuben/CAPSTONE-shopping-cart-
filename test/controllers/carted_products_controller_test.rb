require "test_helper"

class CartedProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get carted_products_index_url
    assert_response :success
  end

  test "should get show" do
    get carted_products_show_url
    assert_response :success
  end

  test "should get new" do
    get carted_products_new_url
    assert_response :success
  end

  test "should get create" do
    get carted_products_create_url
    assert_response :success
  end

  test "should get edit" do
    get carted_products_edit_url
    assert_response :success
  end

  test "should get update" do
    get carted_products_update_url
    assert_response :success
  end

  test "should get destroy" do
    get carted_products_destroy_url
    assert_response :success
  end
end
