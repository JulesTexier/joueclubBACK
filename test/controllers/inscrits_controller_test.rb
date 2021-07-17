require "test_helper"

class InscritsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inscrit = inscrits(:one)
  end

  test "should get index" do
    get inscrits_url, as: :json
    assert_response :success
  end

  test "should create inscrit" do
    assert_difference('Inscrit.count') do
      post inscrits_url, params: { inscrit: { firstname: @inscrit.firstname, lastname: @inscrit.lastname } }, as: :json
    end

    assert_response 201
  end

  test "should show inscrit" do
    get inscrit_url(@inscrit), as: :json
    assert_response :success
  end

  test "should update inscrit" do
    patch inscrit_url(@inscrit), params: { inscrit: { firstname: @inscrit.firstname, lastname: @inscrit.lastname } }, as: :json
    assert_response 200
  end

  test "should destroy inscrit" do
    assert_difference('Inscrit.count', -1) do
      delete inscrit_url(@inscrit), as: :json
    end

    assert_response 204
  end
end
