require 'test_helper'

class RenseignementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @renseignement = renseignements(:one)
  end

  test "should get index" do
    get renseignements_url
    assert_response :success
  end

  test "should get new" do
    get new_renseignement_url
    assert_response :success
  end

  test "should create renseignement" do
    assert_difference('Renseignement.count') do
      post renseignements_url, params: { renseignement: { description: @renseignement.description, email: @renseignement.email, entreprise: @renseignement.entreprise, numero: @renseignement.numero, particulier: @renseignement.particulier, string: @renseignement.string, text: @renseignement.text } }
    end

    assert_redirected_to renseignement_url(Renseignement.last)
  end

  test "should show renseignement" do
    get renseignement_url(@renseignement)
    assert_response :success
  end

  test "should get edit" do
    get edit_renseignement_url(@renseignement)
    assert_response :success
  end

  test "should update renseignement" do
    patch renseignement_url(@renseignement), params: { renseignement: { description: @renseignement.description, email: @renseignement.email, entreprise: @renseignement.entreprise, numero: @renseignement.numero, particulier: @renseignement.particulier, string: @renseignement.string, text: @renseignement.text } }
    assert_redirected_to renseignement_url(@renseignement)
  end

  test "should destroy renseignement" do
    assert_difference('Renseignement.count', -1) do
      delete renseignement_url(@renseignement)
    end

    assert_redirected_to renseignements_url
  end
end
