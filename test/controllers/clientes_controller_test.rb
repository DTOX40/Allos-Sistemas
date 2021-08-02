require 'test_helper'

class ClientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cliente = clientes(:one)
  end

  test "should get index" do
    get clientes_url
    assert_response :success
  end

  test "should get new" do
    get new_cliente_url
    assert_response :success
  end

  test "should create cliente" do
    assert_difference('Cliente.count') do
      post clientes_url, params: { cliente: { celular: @cliente.celular, cep: @cliente.cep, cidade: @cliente.cidade, complemento: @cliente.complemento, cpf: @cliente.cpf, email: @cliente.email, estado: @cliente.estado, nome: @cliente.nome, numero: @cliente.numero, telefone: @cliente.telefone } }
    end

    assert_redirected_to cliente_url(Cliente.last)
  end

  test "should show cliente" do
    get cliente_url(@cliente)
    assert_response :success
  end

  test "should get edit" do
    get edit_cliente_url(@cliente)
    assert_response :success
  end

  test "should update cliente" do
    patch cliente_url(@cliente), params: { cliente: { celular: @cliente.celular, cep: @cliente.cep, cidade: @cliente.cidade, complemento: @cliente.complemento, cpf: @cliente.cpf, email: @cliente.email, estado: @cliente.estado, nome: @cliente.nome, numero: @cliente.numero, telefone: @cliente.telefone } }
    assert_redirected_to cliente_url(@cliente)
  end

  test "should destroy cliente" do
    assert_difference('Cliente.count', -1) do
      delete cliente_url(@cliente)
    end

    assert_redirected_to clientes_url
  end
end
