require "test_helper"

class ContratosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get contratos_index_url
    assert_response :success
  end

  test "should get show" do
    get contratos_show_url
    assert_response :success
  end

  test "should get create" do
    get contratos_create_url
    assert_response :success
  end

  test "should get update" do
    get contratos_update_url
    assert_response :success
  end

  test "should get destroy" do
    get contratos_destroy_url
    assert_response :success
  end
end
