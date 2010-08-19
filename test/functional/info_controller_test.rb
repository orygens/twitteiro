require 'test_helper'

class InfoControllerTest < ActionController::TestCase
  test "should get sobre" do
    get :sobre
    assert_response :success
  end

  test "should get faq" do
    get :faq
    assert_response :success
  end

  test "should get contato" do
    get :contato
    assert_response :success
  end

  test "should get privacidade" do
    get :privacidade
    assert_response :success
  end

  test "should get termos" do
    get :termos
    assert_response :success
  end

end
