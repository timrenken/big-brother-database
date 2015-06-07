require 'test_helper'

class HouseguestsControllerTest < ActionController::TestCase
  setup do
    @houseguest = houseguests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:houseguests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create houseguest" do
    assert_difference('Houseguest.count') do
      post :create, houseguest: { age: @houseguest.age, botb: @houseguest.botb, expelled: @houseguest.expelled, first_day: @houseguest.first_day, have_not: @houseguest.have_not, hoh: @houseguest.hoh, jury: @houseguest.jury, last_day: @houseguest.last_day, latitude: @houseguest.latitude, location: @houseguest.location, longitude: @houseguest.longitude, name: @houseguest.name, nominated: @houseguest.nominated, occupation: @houseguest.occupation, placed: @houseguest.placed, prizes: @houseguest.prizes, season_id: @houseguest.season_id, veto: @houseguest.veto, votes_against: @houseguest.votes_against, votes_to_win: @houseguest.votes_to_win, walked: @houseguest.walked }
    end

    assert_redirected_to houseguest_path(assigns(:houseguest))
  end

  test "should show houseguest" do
    get :show, id: @houseguest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @houseguest
    assert_response :success
  end

  test "should update houseguest" do
    patch :update, id: @houseguest, houseguest: { age: @houseguest.age, botb: @houseguest.botb, expelled: @houseguest.expelled, first_day: @houseguest.first_day, have_not: @houseguest.have_not, hoh: @houseguest.hoh, jury: @houseguest.jury, last_day: @houseguest.last_day, latitude: @houseguest.latitude, location: @houseguest.location, longitude: @houseguest.longitude, name: @houseguest.name, nominated: @houseguest.nominated, occupation: @houseguest.occupation, placed: @houseguest.placed, prizes: @houseguest.prizes, season_id: @houseguest.season_id, veto: @houseguest.veto, votes_against: @houseguest.votes_against, votes_to_win: @houseguest.votes_to_win, walked: @houseguest.walked }
    assert_redirected_to houseguest_path(assigns(:houseguest))
  end

  test "should destroy houseguest" do
    assert_difference('Houseguest.count', -1) do
      delete :destroy, id: @houseguest
    end

    assert_redirected_to houseguests_path
  end
end
