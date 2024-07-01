require "test_helper"

class PagosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pagos_index_url
    assert_response :success
  end

  test "should get show" do
    get pagos_show_url
    assert_response :success
  end

  test "should get create" do
    get pagos_create_url
    assert_response :success
  end

  test "should get update" do
    get pagos_update_url
    assert_response :success
  end
end
