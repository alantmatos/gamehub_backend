require "test_helper"

class GamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game = games(:one)
  end

  test "should get index" do
    get games_url, as: :json
    assert_response :success
  end

  test "should create game" do
    assert_difference("Game.count") do
      post games_url, params: { game: { co_op: @game.co_op, condition: @game.condition, developer: @game.developer, genre: @game.genre, name: @game.name, platform: @game.platform, publisher: @game.publisher, rating: @game.rating, release_year: @game.release_year, trade: @game.trade, upc: @game.upc, value: @game.value } }, as: :json
    end

    assert_response :created
  end

  test "should show game" do
    get game_url(@game), as: :json
    assert_response :success
  end

  test "should update game" do
    patch game_url(@game), params: { game: { co_op: @game.co_op, condition: @game.condition, developer: @game.developer, genre: @game.genre, name: @game.name, platform: @game.platform, publisher: @game.publisher, rating: @game.rating, release_year: @game.release_year, trade: @game.trade, upc: @game.upc, value: @game.value } }, as: :json
    assert_response :success
  end

  test "should destroy game" do
    assert_difference("Game.count", -1) do
      delete game_url(@game), as: :json
    end

    assert_response :no_content
  end
end
