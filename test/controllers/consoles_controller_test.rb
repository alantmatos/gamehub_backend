require "test_helper"

class ConsolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @console = consoles(:one)
  end

  test "should get index" do
    get consoles_url, as: :json
    assert_response :success
  end

  test "should create console" do
    assert_difference("Console.count") do
      post consoles_url, params: { console: { brand: @console.brand, condition: @console.condition, name: @console.name, product_family: @console.product_family, rating: @console.rating, release_year: @console.release_year, storage: @console.storage, trade: @console.trade, upc: @console.upc, value: @console.value } }, as: :json
    end

    assert_response :created
  end

  test "should show console" do
    get console_url(@console), as: :json
    assert_response :success
  end

  test "should update console" do
    patch console_url(@console), params: { console: { brand: @console.brand, condition: @console.condition, name: @console.name, product_family: @console.product_family, rating: @console.rating, release_year: @console.release_year, storage: @console.storage, trade: @console.trade, upc: @console.upc, value: @console.value } }, as: :json
    assert_response :success
  end

  test "should destroy console" do
    assert_difference("Console.count", -1) do
      delete console_url(@console), as: :json
    end

    assert_response :no_content
  end
end
