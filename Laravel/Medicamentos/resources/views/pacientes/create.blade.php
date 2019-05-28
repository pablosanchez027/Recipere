@extends('layouts.default')
@section('titulo_pagina','Pacientes')
@section('titulo','Agregar pacientes')
@section('contenido')
<div class="col-lg-12 grid-margin stretch-card">
<div class="card">
                      <div class="card-body">
                        <h4 class="card-title">Agregar paciente</h4>
                        <form class="forms-sample" method="POST" action="{{ route('pacientes.store') }}">
                        @csrf
                          <div class="form-group">
                            <label>Nombre</label>
                            <input class="form-control" type="text" name="nombre">
                          </div>
                          <div class="form-group">
                            <label>Apellidos</label>
                            <input class="form-control" type="text" name="apellidos">
                          </div>
                          <div class="form-group">
                            <label>Fecha de nacimiento</label>
                            <input class="form-control" type="date" name="nacimiento">
                          </div>
                          <div class="form-group">
                            <label>Correo electrónico</label>
                            <input class="form-control" type="email" name="email">
                          </div>
                          <div class="form-group">
                            <label>Contraseña</label>
                            <input class="form-control" type="password" name="passowrd">
                          </div>
                          <div class="form-group">
                            <label>Confirmar contraseña</label>
                            <input class="form-control" type="password">
                          </div>
                          <div class="form-group">
                            <label>Fotografia</label>
                            <input class="form-control" type="file" name="fotografia">
                          </div>
                          <button class="btn btn-dark btn-fw" type="submit">Guardar nuevo paciente</button>
                        </form>
                      </div>
                    </div>
</div>
@endsection