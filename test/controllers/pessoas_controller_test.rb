require 'test_helper'

class PessoasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pessoa = pessoas(:one)
  end

  test "should get index" do
    get pessoas_url
    assert_response :success
  end

  test "should get new" do
    get new_pessoa_url
    assert_response :success
  end

  test "should create pessoa" do
    assert_difference('Pessoa.count') do
      post pessoas_url, params: { pessoa: { alfabetizado: @pessoa.alfabetizado, beneficio: @pessoa.beneficio, endereco: @pessoa.endereco, estadoCivil: @pessoa.estadoCivil, genero: @pessoa.genero, idade: @pessoa.idade, nacionalidade: @pessoa.nacionalidade, nome: @pessoa.nome, numeroCarteiraDeTrabalho: @pessoa.numeroCarteiraDeTrabalho, profissao: @pessoa.profissao, sobrenome: @pessoa.sobrenome } }
    end

    assert_redirected_to pessoa_url(Pessoa.last)
  end

  test "should show pessoa" do
    get pessoa_url(@pessoa)
    assert_response :success
  end

  test "should get edit" do
    get edit_pessoa_url(@pessoa)
    assert_response :success
  end

  test "should update pessoa" do
    patch pessoa_url(@pessoa), params: { pessoa: { alfabetizado: @pessoa.alfabetizado, beneficio: @pessoa.beneficio, endereco: @pessoa.endereco, estadoCivil: @pessoa.estadoCivil, genero: @pessoa.genero, idade: @pessoa.idade, nacionalidade: @pessoa.nacionalidade, nome: @pessoa.nome, numeroCarteiraDeTrabalho: @pessoa.numeroCarteiraDeTrabalho, profissao: @pessoa.profissao, sobrenome: @pessoa.sobrenome } }
    assert_redirected_to pessoa_url(@pessoa)
  end

  test "should destroy pessoa" do
    assert_difference('Pessoa.count', -1) do
      delete pessoa_url(@pessoa)
    end

    assert_redirected_to pessoas_url
  end
end
