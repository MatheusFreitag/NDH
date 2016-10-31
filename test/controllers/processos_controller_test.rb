require 'test_helper'

class ProcessosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @processo = processos(:one)
  end

  test "should get index" do
    get processos_url
    assert_response :success
  end

  test "should get new" do
    get new_processo_url
    assert_response :success
  end

  test "should create processo" do
    assert_difference('Processo.count') do
      post processos_url, params: { processo: { arquivado: @processo.arquivado, conclusao: @processo.conclusao, dataFim: @processo.dataFim, dataInicio: @processo.dataInicio, demanda: @processo.demanda, id: @processo.id, juiz: @processo.juiz, numeroCaixa: @processo.numeroCaixa, numeroProcesso: @processo.numeroProcesso, tipoDeAcao: @processo.tipoDeAcao, tipoDeDemandantes: @processo.tipoDeDemandantes, vara: @processo.vara } }
    end

    assert_redirected_to processo_url(Processo.last)
  end

  test "should show processo" do
    get processo_url(@processo)
    assert_response :success
  end

  test "should get edit" do
    get edit_processo_url(@processo)
    assert_response :success
  end

  test "should update processo" do
    patch processo_url(@processo), params: { processo: { arquivado: @processo.arquivado, conclusao: @processo.conclusao, dataFim: @processo.dataFim, dataInicio: @processo.dataInicio, demanda: @processo.demanda, id: @processo.id, juiz: @processo.juiz, numeroCaixa: @processo.numeroCaixa, numeroProcesso: @processo.numeroProcesso, tipoDeAcao: @processo.tipoDeAcao, tipoDeDemandantes: @processo.tipoDeDemandantes, vara: @processo.vara } }
    assert_redirected_to processo_url(@processo)
  end

  test "should destroy processo" do
    assert_difference('Processo.count', -1) do
      delete processo_url(@processo)
    end

    assert_redirected_to processos_url
  end
end
