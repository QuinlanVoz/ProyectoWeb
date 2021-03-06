require 'test_helper'

class ReunionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reunion = reunions(:one)
  end

  test "should get index" do
    get reunions_url
    assert_response :success
  end

  test "should get new" do
    get new_reunion_url
    assert_response :success
  end

  test "should create reunion" do
    assert_difference('Reunion.count') do
      post reunions_url, params: { reunion: { apellido: @reunion.apellido, codigo: @reunion.codigo, dni: @reunion.dni, estado: @reunion.estado, fecha: @reunion.fecha, hora: @reunion.hora, nombre: @reunion.nombre, telefono: @reunion.telefono } }
    end

    assert_redirected_to reunion_url(Reunion.last)
  end

  test "should show reunion" do
    get reunion_url(@reunion)
    assert_response :success
  end

  test "should get edit" do
    get edit_reunion_url(@reunion)
    assert_response :success
  end

  test "should update reunion" do
    patch reunion_url(@reunion), params: { reunion: { apellido: @reunion.apellido, codigo: @reunion.codigo, dni: @reunion.dni, estado: @reunion.estado, fecha: @reunion.fecha, hora: @reunion.hora, nombre: @reunion.nombre, telefono: @reunion.telefono } }
    assert_redirected_to reunion_url(@reunion)
  end

  test "should destroy reunion" do
    assert_difference('Reunion.count', -1) do
      delete reunion_url(@reunion)
    end

    assert_redirected_to reunions_url
  end
end
