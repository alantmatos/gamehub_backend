require "test_helper"

class ConsoleCollectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @console_collection = console_collections(:one)
  end

  test "should get index" do
    get console_collections_url, as: :json
    assert_response :success
  end

  test "should create console_collection" do
    assert_difference("ConsoleCollection.count") do
      post console_collections_url, params: { console_collection: { console_id: @console_collection.console_id, user_id: @console_collection.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show console_collection" do
    get console_collection_url(@console_collection), as: :json
    assert_response :success
  end

  test "should update console_collection" do
    patch console_collection_url(@console_collection), params: { console_collection: { console_id: @console_collection.console_id, user_id: @console_collection.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy console_collection" do
    assert_difference("ConsoleCollection.count", -1) do
      delete console_collection_url(@console_collection), as: :json
    end

    assert_response :no_content
  end
end
