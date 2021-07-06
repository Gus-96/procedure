require "test_helper"

class ProcedimentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @procedimento = procedimentos(:one)
  end

  test "should get index" do
    get procedimentos_url
    assert_response :success
  end

  test "should get new" do
    get new_procedimento_url
    assert_response :success
  end

  test "should create procedimento" do
    assert_difference('Procedimento.count') do
      post procedimentos_url, params: { procedimento: { description: @procedimento.description, title: @procedimento.title } }
    end

    assert_redirected_to procedimento_url(Procedimento.last)
  end

  test "should show procedimento" do
    get procedimento_url(@procedimento)
    assert_response :success
  end

  test "should get edit" do
    get edit_procedimento_url(@procedimento)
    assert_response :success
  end

  test "should update procedimento" do
    patch procedimento_url(@procedimento), params: { procedimento: { description: @procedimento.description, title: @procedimento.title } }
    assert_redirected_to procedimento_url(@procedimento)
  end

  test "should destroy procedimento" do
    assert_difference('Procedimento.count', -1) do
      delete procedimento_url(@procedimento)
    end

    assert_redirected_to procedimentos_url
  end
end
